import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="271204",
    database="emoney_project"
)

query = "SELECT thoi_gian, thang_1, thang_2, thang_3, thang_4, thang_5, thang_6, thang_7, thang_8, thang_9, thang_10, thang_11, thang_12 FROM hieu_suat_nganh"
data = pd.read_sql(query, connection)
connection.close()

for col in data.columns[1:]:
    data[col] = data[col].str.strip('%').astype(float)

plt.figure(figsize=(15, 8))

for index, row in data.iterrows():
    plt.plot(data.columns[1:], row[1:], marker='o', label=row['thoi_gian'])

plt.title("Hiệu Suất Ngành Qua Các Tháng (2010-2024)", fontsize=16)
plt.xlabel("Tháng", fontsize=14)
plt.ylabel("Hiệu Suất (%)", fontsize=14)
plt.xticks(rotation=45)
plt.legend(title="Năm", loc="upper left", fontsize=10)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()