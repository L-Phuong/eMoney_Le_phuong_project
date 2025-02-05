import pandas as pd
from sqlalchemy import create_engine

# Đọc dữ liệu từ file CSV ban đầu
file_path = "1.csv"  # Đường dẫn tới file CSV

# Đọc file CSV
data = pd.read_csv(file_path)

# Tách dữ liệu từ cột 1 tới 5 cho file_1
file_1 = data.iloc[:, :5]
file_1.to_csv("file_1.csv", index=False)

# Tách dữ liệu từ cột 6 tới 24 cho file_2
file_2 = data.iloc[:, 5:24]

# Loại bỏ 4 cột đầu của file_2
file_2 = file_2.iloc[:, 4:]
file_2.to_csv("file_2.csv", index=False)

# Đổi tên cột đầu tiên của file_2 thành 'hoso_1' và các cột còn lại giữ nguyên
file_2.columns = ['hoso_1'] + list(file_2.columns[1:])

file_1 = pd.read_csv("file_1.csv")
file_2 = pd.read_csv("file_2.csv")


# 2. Kết nối tới cơ sở dữ liệu SQL
# Thay thế 'mysql+pymysql://username:password@host:port/database_name' bằng thông tin của bạn
engine = create_engine('mysql+pymysql://root:271204@localhost:3306/newschema')

# 3. Import dữ liệu vào SQL
# Đưa dữ liệu file_1 vào bảng 'table_file_1'
file_1.to_sql('table_file_1', con=engine, index=False, if_exists='replace')

# Đưa dữ liệu file_2 vào bảng 'table_file_2'
file_2.to_sql('table_file_2', con=engine, index=False, if_exists='replace')

print("Dữ liệu đã được import vào SQL thành công!")

# 4. Thực hiện LEFT JOIN trong SQL
query = """
    SELECT 
        f1.*, 
        f2.*
    FROM table_file_1 f1
    LEFT JOIN (
        SELECT 
            t2.*, 
            ROW_NUMBER() OVER (PARTITION BY t2.hoso_1 ORDER BY t2.hoso_1) AS rn
        FROM table_file_2 t2
    ) f2
    ON f1.hoso = f2.hoso_1 AND f2.rn = 1
    WHERE f2.hoso_1 IS NOT NULL
"""

# Thực thi câu truy vấn SQL
result = pd.read_sql(query, con=engine)

# Lưu kết quả JOIN vào một file CSV (nếu cần)
result.to_csv("merged_file_sql.csv", index=False)

print("LEFT JOIN thành công và kết quả đã được lưu vào merged_file_sql.csv")

