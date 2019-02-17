from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Cardiaid backend API. Query /user to retrieve user information!"


if __name__ == '__main__':
    app.run(debug=True)