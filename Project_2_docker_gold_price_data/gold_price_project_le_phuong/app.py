from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# Kết nối cơ sở dữ liệu MySQL
def get_db_connection():
    conn = mysql.connector.connect(
        host='172.17.0.2',
        user='root',
        password='271204',
        database='gold_price_db'
    )
    return conn

# Route chính để hiển thị trang web với phân trang
@app.route('/')
def index():
    page = request.args.get('page', 1, type=int)  # Lấy số trang hiện tại, mặc định là trang 1
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    
    # Tính toán số dòng cần lấy dựa trên trang hiện tại
    limit = 10
    offset = (page - 1) * limit
    
    # Lấy dữ liệu từ cơ sở dữ liệu với phân trang
    cursor.execute("SELECT * FROM gold_price ORDER BY timestamp DESC LIMIT %s OFFSET %s", (limit, offset))
    data = cursor.fetchall()
    
    # Lấy tổng số bản ghi để tính toán số trang
    cursor.execute("SELECT COUNT(*) FROM gold_price")
    total_records = cursor.fetchone()['COUNT(*)']
    
    # Tính toán số trang
    total_pages = (total_records // limit) + (1 if total_records % limit > 0 else 0)
    
    conn.close()
    
    # Trả về trang web với dữ liệu và số trang
    return render_template('index.html', data=data, page=page, total_pages=total_pages)

# Route để lấy dữ liệu giá vàng mới nhất dưới dạng JSON
@app.route('/get_new_gold_price')
def get_new_gold_price():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM gold_price ORDER BY timestamp DESC LIMIT 1")
    result = cursor.fetchone()
    conn.close()
    return jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
