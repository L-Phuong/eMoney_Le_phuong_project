from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql

driver = webdriver.Chrome()
driver.get("https://finance.vietstock.vn/nganh/401010-ngan-hang.htm")

try:
    left_col_elements = driver.find_elements(By.CSS_SELECTOR, 'div.left-col-group div.left-col-item')
    left_col_data = [item.text for item in left_col_elements]
    right_rows = driver.find_elements(By.CSS_SELECTOR, 'div.right-col-group.scrollbar ul')
    right_col_data = []
    for row in right_rows:
        cells = row.find_elements(By.CSS_SELECTOR, 'div.cell-item')
        row_data = [cell.text for cell in cells]
        right_col_data.append(row_data)
    columns = ["Thời gian"] + [f"Tháng {i}" for i in range(1, 13)]
    data = []
    for i in range(len(left_col_data)):
        if i < len(right_col_data):
            data.append([left_col_data[i]] + right_col_data[i])
    
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='271204',
        db='emoney_project',
    )

    cursor = conn.cursor()

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS Hieu_suat_nganh (
        thoi_gian VARCHAR(255),
        thang_1 VARCHAR(255),
        thang_2 VARCHAR(255),
        thang_3 VARCHAR(255),
        thang_4 VARCHAR(255),
        thang_5 VARCHAR(255),
        thang_6 VARCHAR(255),
        thang_7 VARCHAR(255),
        thang_8 VARCHAR(255),
        thang_9 VARCHAR(255),
        thang_10 VARCHAR(255),
        thang_11 VARCHAR(255),
        thang_12 VARCHAR(255)
    )
    ''')
    
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS central_tendency_measures (
        central_tendency_measures VARCHAR(255),
        thang_1 VARCHAR(255),
        thang_2 VARCHAR(255),
        thang_3 VARCHAR(255),
        thang_4 VARCHAR(255),
        thang_5 VARCHAR(255),
        thang_6 VARCHAR(255),
        thang_7 VARCHAR(255),
        thang_8 VARCHAR(255),
        thang_9 VARCHAR(255),
        thang_10 VARCHAR(255),
        thang_11 VARCHAR(255),
        thang_12 VARCHAR(255)
    )
    ''')

    for i in data[1:16]:
        cursor.execute('''
        INSERT INTO Hieu_suat_nganh (thoi_gian, thang_1, thang_2, thang_3, thang_4, thang_5, thang_6, thang_7, thang_8, thang_9, thang_10, thang_11, thang_12)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        ''', i)
        
    for i in data[16:18]:
        cursor.execute('''
        INSERT INTO central_tendency_measures (central_tendency_measures, thang_1, thang_2, thang_3, thang_4, thang_5, thang_6, thang_7, thang_8, thang_9, thang_10, thang_11, thang_12)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        ''', i)

    conn.commit()

    cursor.execute('SELECT * FROM Hieu_suat_nganh')
    rows = cursor.fetchall()
    for row in rows:
        print(row)

    cursor.close()
    conn.close()

finally:
    driver.quit()
