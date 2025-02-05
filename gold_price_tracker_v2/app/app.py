from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

def get_db_connection():
    conn = mysql.connector.connect(
        host='mysql',
        user='root',
        password='rootpassword',
        database='gold_prices'
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    
    cursor.execute("SELECT * FROM gold_price_db ORDER BY timestamp DESC")
    data = cursor.fetchall()
    
    conn.close()
    
    return render_template('index.html', data=data)

@app.route('/get_new_gold_price')
def get_new_gold_price():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM gold_price_db ORDER BY timestamp DESC")
    result = cursor.fetchall()
    conn.close()
    return jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
