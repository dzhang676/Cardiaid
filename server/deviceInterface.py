import datetime
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os
import bluetooth
import time

# bd_addr = "00:14:03:06:8D:0F"
# port = 1
# sock = bluetooth.BluetoothSocket( bluetooth.RFCOMM )
# sock.connect((bd_addr, port))
class ArduinoInterface():
    bd_addr = "00:14:03:06:8D:0F"
    HRValid = 0
    BOValid = 0
    HR = -999
    BO = -999
    HRcache = []
    BOcache = []
    port = 1
    sock = bluetooth.BluetoothSocket( bluetooth.RFCOMM )
    def __init__(self):
        try:
            print("connecting...")
            self.sock.connect((self.bd_addr, self.port))
            print("connected")
        except:
            print("connection failed")
        return

    def returnVitals(self):
        # red=0, ir=0, HR=-999, HRvalid=0, SPO2=-999, SPO2Valid=0
        try:
            curr = None
            readings = str(self.sock.recv(140))
            if len(readings) < 140:
                time.sleep(0.5)
            else:
                readings = readings.split("\\r\\n")
                for reading in readings:
                    if reading[:3] == "red":
                        curr = reading.split(',')
                        break
                if curr is not None and curr[0][:3] == "red" and curr[-1][1:10] == 'SPO2Valid':
                    print(curr)
                    if curr[-1].split('=')[1] == '0':
                        self.BOValid = 0
                        self.BOcache.clear()
                        #print("BO cleared")
                    else:
                        currBO = float(curr[-2].split('=')[1])
                        if currBO < 80:
                            currBO = 80
                        if currBO < 96:
                            currBO = 96 - (96 - currBO)/(currBO / 15 )
                        # 80 - 92.19, 85 - 93.24, 90 - 94.16
                        self.BOcache.append(currBO)
                    if curr[-3].split('=')[1] == '0':
                        self.HRValid = 0
                        self.HRcache.clear()
                        #print("HR cleared")
                    else:
                        currHR = float(curr[2].split('=')[1])
                        if currHR > 60:
                            currHR = 60 + (currHR - 60)/(currHR/50)
                            # 100 - 80, 200  - 95 , 300 - 100
                        else:
                            currHR = 60 - (60 - currHR)/ (currHR / 5)
                            # 20 - 50, 30 - 55, 40 - 57.5, 50 - 59
                        self.HRcache.append(currHR)
                    if len(self.HRcache) >= 10:
                        avgHR = sum(self.HRcache) // 10
                        self.HRcache.clear()
                        self.HR = avgHR
                        print("HR updated")
                        print(avgHR)

                    if len(self.BOcache) >= 10:
                        avgBO = sum(self.BOcache) // 10
                        self.BOcache.clear()
                        self.BO = avgBO
                        print("BO updated")
                        print(avgBO)
        except:
            return None
        return {"HRValid": self.HRValid, "BOValid": self.BOValid, "HR": self.HR, "BO":self.BO}





