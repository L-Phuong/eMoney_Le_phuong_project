import mysql.connector
import pandas as pd

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="271204",
    database="emoney_project"
)

query = "SELECT * FROM hieu_suat_nganh"
data = pd.read_sql_query(query, connection)

connection.close()
columns = ['Thời gian', 'Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 
           'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12']
data.columns = columns
csv_filename = "hieu_suat_nganh.csv"
data.to_csv(csv_filename, index=False, encoding='utf-8-sig')

print(f"Dữ liệu đã được lưu vào file CSV: {csv_filename}")
