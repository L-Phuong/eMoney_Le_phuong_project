import mysql.connector
import requests
import datetime
import time
import pandas as pd

def fetch_and_store_data():
    # 1. Đọc dữ liệu từ file CSV
    file_path = 'gold_price_data.csv'  # Cập nhật đường dẫn đến file CSV của bạn
    data = pd.read_csv(file_path)

    open_time = datetime.datetime.fromtimestamp(data['open_time'], tz=datetime.timezone.utc)
    timestamp = data['timestamp']

    conn = mysql.connector.connect(
        host='localhost',
        user='2350fa68e790a96a044322548499a5b8e8e107d4c424e082bc9bcf7c7d49ad08',
        password='271204',
        database='gold_price_db'
    )
    cursor = conn.cursor()

    create_table_query = """
        CREATE TABLE IF NOT EXISTS gold_prices (
            id INT AUTO_INCREMENT PRIMARY KEY,
            timestamp INT,
            metal VARCHAR(10),
            currency VARCHAR(10),
            exchange VARCHAR(50),
            symbol VARCHAR(50),
            prev_close_price DECIMAL(10,2),
            open_price DECIMAL(10,2),
            low_price DECIMAL(10,2),
            high_price DECIMAL(10,2),
            open_time DATETIME,
            price DECIMAL(10,2),
            ch DECIMAL(10,2),
            chp DECIMAL(10,2),
            ask DECIMAL(10,2),
            bid DECIMAL(10,2),
            price_gram_24k DECIMAL(10,2),
            price_gram_22k DECIMAL(10,2),
            price_gram_21k DECIMAL(10,2),
            price_gram_20k DECIMAL(10,2),
            price_gram_18k DECIMAL(10,2),
            price_gram_16k DECIMAL(10,2),
            price_gram_14k DECIMAL(10,2),
            price_gram_10k DECIMAL(10,2)
        )
    """
    
    cursor.execute(create_table_query)
    values = (
        data['metal'],
        data['currency'],
        data['exchange'],
        data['symbol'],
        data['prev_close_price'],
        data['open_price'],
        data['low_price'],
        data['high_price'],
        open_time,
        data['price'],
        data['ch'],
        data['chp'],
        data['ask'],
        data['bid'],
        data['price_gram_24k'],
        data['price_gram_22k'],
        data['price_gram_21k'],
        data['price_gram_20k'],
        data['price_gram_18k'],
        data['price_gram_16k'],
        data['price_gram_14k'],
        data['price_gram_10k'],
        timestamp
    )
    
    # test_value = (
    #     'XAU',
    #     'USD',
    #     'FOREXCOM',
    #     'FOREXCOM:XAUUSD',
    #     2670.39,
    #     2670.39,
    #     2668.58,
    #     2682.51,
    #     1/10/2025  12:00:00 AM,
    #     2681.34,
    #     10.95,
    #     0.41,
    #     2681.84,
    #     2680.79,
    #     86.21,
    #     79.02,
    #     75.43,
    #     71.84,
    #     64.66,
    #     57.47,
    #     50.29,
    #     35.92,
    #     1736504186
    # )

    insert_query = """
        INSERT INTO gold_prices (
            metal, currency, exchange, symbol, prev_close_price, open_price, low_price, high_price,
            open_time, price, ch, chp, ask, bid, price_gram_24k, price_gram_22k,
            price_gram_21k, price_gram_20k, price_gram_18k, price_gram_16k, price_gram_14k,
            price_gram_10k, timestamp
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    print("Values to insert:", values)

    cursor.execute(insert_query, values)
    conn.commit()
    print("Data inserted successfully")

    cursor.close()
    conn.close()

try:
    while True:
        fetch_and_store_data()
        time.sleep(2) 
except KeyboardInterrupt:
    print("Process interrupted by user.")
