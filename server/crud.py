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


class User(db.Model):
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


class UserSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ('name', 'age', 'medication', 'roomNumber', 'heartRate', 'bloodOxygen', 
        'birthDate', 'sex', 'allergies', 'medicalConditions', 'notes', 'nurse')


user_schema = UserSchema()
users_schema = UserSchema(many=True)


# endpoint to create new user
@app.route("/user", methods=["POST"])
def add_user():
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
    
    new_user = User(id, name, age, medication, roomNumber, heartRate, bloodOxygen, 
        birthDate, sex, allergies, medicalConditions, notes, nurse)

    db.session.add(new_user)
    db.session.commit()

    return jsonify(new_user)

# endpoint to show all users
@app.route("/user", methods=["GET"])
def get_user():
    all_users = User.query.all()
    result = users_schema.dump(all_users)
    return jsonify(result.data)


# endpoint to get user detail by id
@app.route("/user/<id>", methods=["GET"])
def user_detail(id):
    user = User.query.get(id)
    return user_schema.jsonify(user)


# endpoint to update user
@app.route("/user/<id>", methods=["PUT"])
def user_update(id):
    user = User.query.get(id)
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

    user.id = id
    user.name = name
    user.age = age
    user.medication = medication
    user.roomNumber = roomNumber
    user.heartRate = heartRate
    user.bloodOxygen = bloodOxygen
    user.birthDate = birthDate
    user.sex = sex
    user.allergies = allergies
    user.medicalConditions = medicalConditions
    user.notes = notes
    user.nurese = nurse

    db.session.commit()
    return user_schema.jsonify(user)

# endpoint to delete user
@app.route("/user/<id>", methods=["DELETE"])
def user_delete(id):
    user = User.query.get(id)
    db.session.delete(user)
    db.session.commit()
    return user_schema.jsonify(user)


if __name__ == '__main__':
    app.run(debug=True)