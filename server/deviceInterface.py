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
                        print("BO cleared")
                    else:
                        self.BOcache.append(float(curr[-2].split('=')[1]))
                    if curr[-3].split('=')[1] == '0':
                        self.HRValid = 0
                        self.HRcache.clear()
                        print("HR cleared")
                    else:
                        self.HRcache.append(float(curr[2].split('=')[1]))

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





