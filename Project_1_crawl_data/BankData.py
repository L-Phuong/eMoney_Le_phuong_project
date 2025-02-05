from selenium import webdriver
from selenium.webdriver.common.by import By
import pymysql

driver = webdriver.Chrome()
driver.get("https://finance.vietstock.vn/nganh/401010-ngan-hang.htm")

try:
    rows = driver.find_elements(By.CSS_SELECTOR, 'table.table-custom tr')

    data = []
    for row in rows:
        cells = row.find_elements(By.CSS_SELECTOR, 'td')
        cells_text = [cell.text.strip() for cell in cells]
        if len(cells_text) > 1:
            data.append(cells_text)

    final_data = []
    for raw_data in data:
        code_and_name = raw_data[1].split('\n')
        code = code_and_name[0]
        name = code_and_name[1]
        raw_data.pop(1)
        raw_data.insert(1, code)
        raw_data.insert(2, name)
        final_data.append(raw_data)

    print(final_data)

    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='271204',
        db='emoney_project',
    )

    cursor = conn.cursor()

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS BankData (
        ID INT PRIMARY KEY,
        Code VARCHAR(255),
        Bank_Name VARCHAR(255),
        Closing_Price VARCHAR(255),
        Market_Cap VARCHAR(255),
        EPS VARCHAR(255),
        BVPS VARCHAR(255),
        PE VARCHAR(255),
        PB VARCHAR(255),
        PS VARCHAR(255),
        Dividend_Yield VARCHAR(255),
        EVEBIT VARCHAR(255),
        EVEBITDA VARCHAR(255)
    )
    ''')

    for i in final_data:
        cursor.execute('''
        INSERT INTO BankData (ID, Code, Bank_Name, Closing_Price, Market_Cap, EPS, BVPS, PE, PB, PS, Dividend_Yield, EVEBIT, EVEBITDA)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        ''', i)

    conn.commit()

    cursor.execute('SELECT * FROM BankData')
    rows = cursor.fetchall()
    if rows:
        print("Data inserted successfully")

    cursor.close()
    conn.close()

finally:
    driver.quit()
