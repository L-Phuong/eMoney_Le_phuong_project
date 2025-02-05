import pandas as pd
import mysql.connector

# Đọc file Excel
file_path = 'C:/Users/ASUS/Downloads/2014.xlsx'
xls = pd.ExcelFile(file_path)

# Đọc dữ liệu từ các bảng '2014' và 'thunhap'
df_2014 = pd.read_excel(xls, '2014')
df_thunhap = pd.read_excel(xls, 'thunhap')

# Kiểm tra và loại bỏ các dòng có giá trị NaN trong df_2014 và df_thunhap
df_2014 = df_2014.dropna()  # Loại bỏ các dòng chứa NaN trong bảng '2014'
df_thunhap = df_thunhap.dropna()  # Loại bỏ các dòng chứa NaN trong bảng 'thunhap'

# Kết nối MySQL
conn = mysql.connector.connect(
    host='localhost',
    user='root',  # Thay đổi thành tên người dùng của bạn
    password='',  # Thay đổi thành mật khẩu của bạn
    database='your_database_name'  # Thay đổi thành tên cơ sở dữ liệu của bạn
)

cursor = conn.cursor()

# Chèn dữ liệu vào bảng '2014'
for index, row in df_2014.iterrows():
    cursor.execute("""
    INSERT INTO n2014 (tinh, huyen, xa, diaban, hoso, quyen, ttnt, dantoc, tsnguoi, Benh_tat, chi_cho_ytte, m5b1ct, m5b1c6, thu_nhap)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, tuple(row))

# Chèn dữ liệu vào bảng 'thunhap'
for index, row in df_thunhap.iterrows():
    cursor.execute("""
    INSERT INTO thunhap (tinh, huyen, xa, diaban, hoso, thunhap)
    VALUES (%s, %s, %s, %s, %s, %s)
    """, tuple(row))

# Commit và đóng kết nối
conn.commit()
cursor.close()
conn.close()

print("Dữ liệu đã được chèn vào MySQL thành công.")
