from flask import Flask, render_template, jsonify
import json
import os

app = Flask(__name__)
DATA_FILE = "data/data.json"

@app.route("/")
def index():
    data = []
    if os.path.exists(DATA_FILE):
        with open(DATA_FILE, "r") as file:
            for line in file:
                data.append(json.loads(line))
    return render_template("index.html", data=data)

@app.route("/api/data")
def api_data():
    data = []
    if os.path.exists(DATA_FILE):
        with open(DATA_FILE, "r") as file:
            for line in file:
                data.append(json.loads(line))
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
