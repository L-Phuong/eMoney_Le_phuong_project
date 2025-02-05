from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql
from datetime import datetime

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
            datetime.strptime(record[0], '%H:%M:%S')  # Ensure the `time` field is valid
            cursor.execute('''
            INSERT INTO StockTransactions (time, price, lot_quantity, cumulative_quantity, percentage)
            VALUES (%s, %s, %s, %s, %s)
            ''', record)
        except ValueError:
            print(f"Invalid time format in record: {record}")
        except pymysql.MySQLError as e:
            print(f"Error inserting data: {e}")

    cursor.execute('''
    CREATE TEMPORARY TABLE TempStockTransactions AS
    SELECT 
        NULL AS id, -- Reset the ID column to NULL for auto-increment
        time, 
        price, 
        lot_quantity, 
        cumulative_quantity, 
        percentage
    FROM (
        SELECT *, ROW_NUMBER() OVER (
            PARTITION BY time, price, lot_quantity, cumulative_quantity, percentage
            ORDER BY STR_TO_DATE(time, '%H:%i:%s') ASC
        ) AS rn
        FROM StockTransactions
    ) AS RankedTransactions
    WHERE rn = 1
    ORDER BY STR_TO_DATE(time, '%H:%i:%s') ASC;
    ''')

    cursor.execute('DROP TABLE StockTransactions')
    cursor.execute('''
    CREATE TABLE StockTransactions (
        id INT AUTO_INCREMENT PRIMARY KEY,
        time VARCHAR(50),
        price VARCHAR(50),
        lot_quantity VARCHAR(50),
        cumulative_quantity VARCHAR(50),
        percentage VARCHAR(50)
    )
    ''')

    cursor.execute('''
    INSERT INTO StockTransactions (time, price, lot_quantity, cumulative_quantity, percentage)
    SELECT time, price, lot_quantity, cumulative_quantity, percentage
    FROM TempStockTransactions;
    ''')

    cursor.execute('SELECT * FROM StockTransactions')
    rows = cursor.fetchall()
    if rows:
        print("Sorted, deduplicated, and ID reset data:")
        for row in rows:
            print(row)

    conn.commit()
    cursor.close()
    conn.close()

finally:
    driver.quit()
