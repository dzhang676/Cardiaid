import serial
import datetime
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os

class ArduinoInterface():
    #ser = serial.Serial('COM3') # use COM3 for now until bluetooth connection 
    #ser.baudrate = 9600
    #ser.open()
    data = {"HRValid": True, "BOValid": True, "HR": 0, "BO":0}
    HRcache = []
    BOcache = []
    def __init__(self):
        return

    def returnVitals(self):
        # red=0, ir=0, HR=-999, HRvalid=0, SPO2=-999, SPO2Valid=0
        curr = "red=0, ir=0, HR=999, HRvalid=1, SPO2=88, SPO2Valid=1".split(',') # ser.read_until().split(',')
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

        if len(self.HRcache) >= 500:
            avgHR = sum(self.HRcache) // 500
            self.HRcache.clear()
            self.data["HR"] = avgHR

        if len(self.BOcache) >= 500:
            avgBO = sum(self.BOcache) // 500
            self.BOcache.clear()
            self.data["BO"] = avgBO
        
        return self.data





