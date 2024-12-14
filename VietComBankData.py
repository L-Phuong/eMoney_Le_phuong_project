from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql

driver = webdriver.Chrome()
driver.get("https://finance.vietstock.vn/VCB/thong-ke-giao-dich.htm")

try:
    rows = driver.find_elements(By.CSS_SELECTOR, '.table.table-striped.table-middle.m-b.table-hover.table-deal.table-fixed tbody tr')

    data = []
    for row in rows:
        cells = row.find_elements(By.CSS_SELECTOR, 'td')
        cells_text = [cell.text.strip() for cell in cells]
        if len(cells_text) > 1:
            time, price, lot_quantity, cumulative_quantity, percentage = cells_text
            data.append([time, price, lot_quantity, cumulative_quantity, percentage])
    print(data)

    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='271204',
        db='emoney_project',
    )

    cursor = conn.cursor()

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS StockTransactions (
        id INT AUTO_INCREMENT PRIMARY KEY,
        time VARCHAR(50),
        price VARCHAR(50),
        lot_quantity VARCHAR(50),
        cumulative_quantity VARCHAR(50),
        percentage VARCHAR(50)
    )
    ''')

    for record in data:
        try:
            cursor.execute('''
            INSERT INTO StockTransactions (time, price, lot_quantity, cumulative_quantity, percentage)
            VALUES (%s, %s, %s, %s, %s)
            ''', record)
        except pymysql.MySQLError as e:
            print(f"Error inserting data: {e}")

    conn.commit()

    cursor.execute('SELECT * FROM StockTransactions')
    rows = cursor.fetchall()
    if rows:
        print("Data inserted successfully")
    cursor.close()
    conn.close()

finally:
    driver.quit()
