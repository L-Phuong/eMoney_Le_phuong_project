from flask import Flask, render_template
import pandas as pd

app = Flask(__name__)

# Đọc dữ liệu từ file CSV
def load_data():
    file_path = "data/gold_prices.csv"
    data = pd.read_csv(file_path)
    return data

@app.route('/')
def index():
    data = load_data()  # Tải dữ liệu
    return render_template('index.html', data=data.to_dict(orient='records'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
