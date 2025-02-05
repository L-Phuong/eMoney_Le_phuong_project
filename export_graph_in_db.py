import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="271204",
    database="emoney_project"
)

query = "SELECT * FROM hieu_suat_nganh"
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

for index, row in data.iterrows():
    for i, value in enumerate(row[1:], start=1):
        plt.text(i - 1, value + 0.2, f'{value:.2f}%', ha='center', va='bottom')

plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

plt.figure(figsize=(15, 8))

data.set_index('thoi_gian').transpose().plot(kind='bar', figsize=(15, 8), legend=True)
plt.title("Hiệu Suất Ngành Qua Các Tháng (2010-2024)", fontsize=16)
plt.xlabel("Tháng", fontsize=14)
plt.ylabel("Hiệu Suất (%)", fontsize=14)
plt.xticks(rotation=45)
plt.legend(title="Năm", loc="upper left", fontsize=10)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

plt.figure(figsize=(15, 8))

for i, col in enumerate(data.columns[2:], start=2):
    plt.scatter(data['thang_1'], data[col], label=f'{col} vs thang_1')

plt.title("Hiệu Suất Ngành Qua Các Tháng (2010-2024)", fontsize=16)
plt.xlabel("Hiệu Suất Tháng 1 (%)", fontsize=14)
plt.ylabel("Hiệu Suất (%)", fontsize=14)
plt.xticks(rotation=45)
plt.legend(title="Cặp Tháng", loc="upper left", fontsize=8)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()

plt.figure(figsize=(15, 8))

for col in data.columns[2:]:
    plt.hist(data[col], bins=10, alpha=0.7, label=col)

plt.title("Phân Bố Hiệu Suất Ngành Qua Các Tháng (2010-2024)", fontsize=16)
plt.xlabel("Hiệu Suất (%)", fontsize=14)
plt.ylabel("Tần Suất", fontsize=14)
plt.xticks(rotation=45)
plt.legend(title="Tháng", loc="upper right", fontsize=10)
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()
plt.show()
