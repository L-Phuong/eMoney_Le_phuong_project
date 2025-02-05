import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import re

# Kết nối cơ sở dữ liệu MySQL
connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="271204",
    database="emoney_project"
)

# Truy vấn dữ liệu
query = "SELECT * FROM stocktransactions"
data = pd.read_sql(query, connection)
connection.close()

# Hàm để trích xuất giá trị chính từ chuỗi giá trị
def extract_main_value(value):
    match = re.match(r'([\d,]+)-', value)
    if match:
        return int(match.group(1).replace(',', ''))
    return None

# Áp dụng hàm cho cột 'price'
data['price'] = data['price'].apply(extract_main_value)

data['time'] = pd.to_datetime(data['time'])

data['lot_quantity'] = data['lot_quantity'].replace(',', '', regex=True).astype(int)
data['cumulative_quantity'] = data['cumulative_quantity'].replace(',', '', regex=True).astype(int)
data['percentage'] = data['percentage'].replace('%', '', regex=True).astype(float)

# Biểu đồ 1: Biến động giá theo thời gian
plt.figure(figsize=(15, 8))
plt.plot(data['time'], data['price'], marker='o', linestyle='-', color='blue')
plt.title("Biến động giá theo thời gian", fontsize=16)
plt.xlabel("Thời gian", fontsize=14)
plt.ylabel("Giá trị", fontsize=14)
plt.xticks(rotation=45)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# Biểu đồ 2: Biến động Lot Quantity theo thời gian
plt.figure(figsize=(15, 8))
plt.plot(data['time'], data['lot_quantity'], marker='o', linestyle='-', color='purple', label='Lot Quantity')
plt.title("Biến động Lot Quantity và Cumulative Quantity theo thời gian", fontsize=16)
plt.xlabel("Thời gian", fontsize=14)
plt.ylabel("Giá trị", fontsize=14)
plt.xticks(rotation=45)
plt.legend(loc='upper left', fontsize=10)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# Biểu đồ 3: Biến động Cumulative Quantity theo thời gian
plt.figure(figsize=(15, 8))
plt.plot(data['time'], data['cumulative_quantity'], marker='o', linestyle='-', color='red', label='Cumulative Quantity')
plt.title("Biến động Lot Quantity và Cumulative Quantity theo thời gian", fontsize=16)
plt.xlabel("Thời gian", fontsize=14)
plt.ylabel("Giá trị", fontsize=14)
plt.xticks(rotation=45)
plt.legend(loc='upper left', fontsize=10)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# Biểu đồ 4: Biến động tỷ lệ cổ phiếu theo thời gian
plt.figure(figsize=(15, 8))
plt.bar(data['time'], data['percentage'], color='green')
plt.title("Biến động tỷ lệ cổ phiếu theo thời gian", fontsize=16)
plt.xlabel("Thời gian", fontsize=14)
plt.ylabel("Tỷ lệ (%)", fontsize=14)
plt.xticks(rotation=45)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

# Biểu đồ 5: So sánh giá trị Price và Lot Quantity
plt.figure(figsize=(15, 8))
plt.scatter(data['price'], data['lot_quantity'], color='orange')
plt.title("So sánh giá trị Price và Lot Quantity", fontsize=16)
plt.xlabel("Price", fontsize=14)
plt.ylabel("Lot Quantity", fontsize=14)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()
