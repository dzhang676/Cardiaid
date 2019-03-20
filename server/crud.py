import datetime
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os

app = Flask(__name__)
basedir = os.path.abspath(os.path.dirname(__file__))
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join(basedir, 'crud.sqlite')
db = SQLAlchemy(app)
ma = Marshmallow(app)

class Patient(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(120), unique=False)
    age = db.Column(db.Integer, unique=False)
    medication = db.Column(db.String(120), unique=False)
    roomNumber = db.Column(db.Integer, unique=False)
    heartRate = db.Column(db.Integer, unique=False)
    bloodOxygen = db.Column(db.Integer, unique=False)
    birthDate = db.Column(db.String(120), unique=False)
    sex = db.Column(db.String(120), unique=False)
    allergies = db.Column(db.String(120), unique=False)
    medicalConditions = db.Column(db.String(120), unique=False)
    notes = db.Column(db.String(120), unique=False)
    nurse = db.Column(db.Integer, unique=False)

    def __init__(self, id, name, age, medication, roomNumber, heartRate, bloodOxygen, 
        birthDate, sex, allergies, medicalConditions, notes, nurse):
        self.id = id
        self.name = name
        self.age = age
        self.medication = medication
        self.roomNumber = roomNumber
        self.heartRate = heartRate
        self.bloodOxygen = bloodOxygen
        self.birthDate = birthDate
        self.sex = sex
        self.allergies = allergies
        self.medicalConditions = medicalConditions
        self.notes = notes
        self.nurse = nurse

class PatientSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ('name', 'age', 'medication', 'roomNumber', 'heartRate', 'bloodOxygen', 
        'birthDate', 'sex', 'allergies', 'medicalConditions', 'notes', 'nurse')

class User(db.Model):
    userName = db.Column(db.String(120), primary_key=True)
    password = db.Column(db.String(120), unique=False)

    def __init__(self, userName, password):
        self.userName = userName
        self.password = password

class UserSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ('userName', 'password')

class Nurse(db.Model):
    nurseId = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(120), unique=False)
    patientList = db.Column(db.String(120), unique=False)

    def __init__(self, nurseId, name, patientList):
        self.nurseId = nurseId
        self.name = name
        self.patientList = patientList
        
class NurseSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ('nurseId', 'name', 'patientList')

class Alerts(db.Model):
    alertId = db.Column(db.Integer, primary_key=True)
    nurse = db.Column(db.Integer, unique=False)
    heartRate = db.Column(db.Integer, unique=False)
    bloodOxygen = db.Column(db.Integer, unique=False)
    reason = db.Column(db.String(120), unique=False)
    def __init__(self, alertId, nurse, heartRate, bloodOxygen, reason):
        self.alertId = alertId
        self.nurse = nurse
        self.heartRate = heartRate
        self.bloodOxygen = bloodOxygen
        self.reason = reason

class AlertSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ('alertId', 'nurse', 'heartRate', 'bloodOxygen', 'reason')

patient_schema = PatientSchema()
patients_schema = PatientSchema(many=True)

user_schema = UserSchema()
users_schema = UserSchema(many=True)

nurse_schema = NurseSchema()
nurses_schema = NurseSchema(many=True)

alerts_schema = AlertSchema(many=True)

# endpoint to return all alerts
@app.route("/alerts", methods=["GET"])
def get_alerts():
    all_alerts = Alerts.query.all()
    result = alerts_schema.dump(all_alerts)
    return jsonify(result.data)

# get individual nurse
@app.route("/nurse/<nurseId>", methods=["GET"])
def get_nurse(nurseId):
    nurse = Nurse.query.get(nurseId)
    return nurse_schema.jsonify(nurse)

# endpoint to create new nurse
@app.route("/nurse", methods=["POST"])
def add_user():
    nurseId = request.args['nurseId']
    name = request.args['name']
    patientList = request.args['patientList']
    new_nurse = Nurse(nurseId, name, patientList)
    db.session.add(new_nurse)
    db.session.commit()

    return jsonify(new_nurse)

# endpoint to show all nurses
@app.route("/nurse", methods=["GET"])
def get_users():
    all_nurses = Nurse.query.all()
    result = nurses_schema.dump(all_nurses)
    return jsonify(result.data)

# endpoint to get nurses patient list
@app.route("/nurse/<nurseId>/patientList", methods=["GET"])
def get_patient_list(nurseId):
    nurse = Nurse.query.get(nurseId)
    patientIds = nurse.patientList.split(',')
    patientDict = {}

    for id in patientIds:
        patient = Patient.query.get(id)
        patientDict[patient.name] = {"roomNumber": patient.roomNumber, "age": patient.age, "name": patient.name}
    
    return patientDict

# login endpoint
@app.route("/user/<userName>/<password>", methods=["GET"])
def get_user(userName, password):
    user = User.query.get(userName)
    if not user:
        return "invalid username"
    if password != user.password:
        return "wrong password"
    else:
        return "login successful"

# endpoint to create new user
@app.route("/user", methods=["POST"])
def add_user():
    userName = request.args['userName']
    password = request.args['password']
    new_user = User(userName, password)
    db.session.add(new_user)
    db.session.commit()

    return jsonify(new_user)

# endpoint to show all users
@app.route("/user", methods=["GET"])
def get_users():
    all_users = User.query.all()
    result = users_schema.dump(all_users)
    return jsonify(result.data)


# endpoint to create new patient
@app.route("/patient", methods=["POST"])
def add_patient():
    id = request.args['id']
    name = request.args['name']
    age = request.args['age']
    medication = request.args['medication']
    roomNumber = request.args['roomNumber']
    heartRate = request.args['heartRate']
    bloodOxygen = request.args['bloodOxygen']
    birthDate = request.args['birthDate']
    sex = request.args['sex']
    allergies = request.args['allergies']
    medicalConditions = request.args['medicalConditions']
    notes = request.args['notes']
    nurse = request.args['nurse']
    
    new_patient = Patient(id, name, age, medication, roomNumber, heartRate, bloodOxygen, 
        birthDate, sex, allergies, medicalConditions, notes, nurse)

    db.session.add(new_patient)
    db.session.commit()

    return jsonify(new_patient)

# endpoint to show all patients
@app.route("/patient", methods=["GET"])
def get_patient():
    all_patients = Patient.query.all()
    result = patients_schema.dump(all_patients)
    return jsonify(result.data)


# endpoint to get patient detail by id
@app.route("/patient/<id>", methods=["GET"])
def patient_detail(id):
    patient = Patient.query.get(id)
    return patient_schema.jsonify(patient)


# endpoint to update patient
@app.route("/patient/<id>", methods=["PUT"])
def patient_update(id):
    patient = Patient.query.get(id)
    id = request.args['id']
    name = request.args['name']
    age = request.args['age']
    medication = request.args['medication']
    roomNumber = request.args['roomNumber']
    heartRate = request.args['heartRate']
    bloodOxygen = request.args['bloodOxygen']
    birthDate = request.args['birthDate']
    sex = request.args['sex']
    allergies = request.args['allergies']
    medicalConditions = request.args['medicalConditions']
    notes = request.args['notes']
    nurse = request.args['nurse']

    patient.id = id
    patient.name = name
    patient.age = age
    patient.medication = medication
    patient.roomNumber = roomNumber
    patient.heartRate = heartRate
    patient.bloodOxygen = bloodOxygen
    patient.birthDate = birthDate
    patient.sex = sex
    patient.allergies = allergies
    patient.medicalConditions = medicalConditions
    patient.notes = notes
    patient.nurese = nurse

    db.session.commit()
    return patient_schema.jsonify(patient)

# endpoint to delete patient
@app.route("/patient/<id>", methods=["DELETE"])
def patient_delete(id):
    patient = Patient.query.get(id)
    db.session.delete(patient)
    db.session.commit()
    return patient_schema.jsonify(patient)


if __name__ == '__main__':
    app.run(debug=True)