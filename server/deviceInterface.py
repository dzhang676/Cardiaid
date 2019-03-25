import datetime
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os
import bluetooth
import time

class ArduinoInterface():
    nearby_devices = bluetooth.discover_devices()
    bd_addr = "00:14:03:06:8D:0F"
    sock = bluetooth.BluetoothSocket( bluetooth.RFCOMM )
    data = {"HRValid": True, "BOValid": True, "HR": 0, "BO":0}
    HRcache = []
    BOcache = []
    port = 1
    print("trying to connect")
    sock.connect((bd_addr, port))
    print("connected")

    def __init__(self):
        return

    def returnVitals(self):
        # red=0, ir=0, HR=-999, HRvalid=0, SPO2=-999, SPO2Valid=0
        curr = None
        readings = str(self.sock.recv(100)).split("\\r\\n")
        time.sleep(0.5)
        for reading in readings:
            if reading[:3] == "red":
                curr = reading.split(',')
                break
                
        print(readings)
        print("curr:")
        print(curr)
        if curr is not None and curr[0][:3] == "red" and curr[-1][1:10] == 'SPO2Valid':
            if curr[-1].split('=')[1] == 0:
                self.data["BOValid"] = False
                self.BOcache.clear()
            else:
                self.data["BOValid"] = True
                self.BOcache.append(float(curr[-2].split('=')[1]))
            if curr[-3].split('=')[1] == 0:
                self.data["HRValid"] = False
                self.HRcache.clear()
            else:
                self.data["HRValid"] = True
                self.HRcache.append(float(curr[2].split('=')[1]))

            if len(self.HRcache) >= 10:
                avgHR = sum(self.HRcache) // 10
                self.HRcache.clear()
                self.data["HR"] = avgHR

            if len(self.BOcache) >= 10:
                avgBO = sum(self.BOcache) // 10
                self.BOcache.clear()
                self.data["BO"] = avgBO
        
        return self.data





