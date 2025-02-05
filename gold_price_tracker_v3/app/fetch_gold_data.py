import requests
import mysql.connector
import time

API_URL = "https://www.goldapi.io/api/XAU/USD"
API_KEY = "goldapi-2si9psm61oygp2-io"

def get_db_connection():
    conn = mysql.connector.connect(
        host='mysql',
        user='root',
        password='rootpassword',
        database='gold_prices'
    )
    return conn

def create_table_if_not_exists():
    conn = get_db_connection()
    cursor = conn.cursor()
    create_table_query = """
        CREATE TABLE IF NOT EXISTS gold_price_db (
            id INT AUTO_INCREMENT PRIMARY KEY,
            timestamp VARCHAR(255),
            metal VARCHAR(255),
            currency VARCHAR(255),
            exchange VARCHAR(255),
            symbol VARCHAR(255),
            prev_close_price FLOAT,
            open_price FLOAT,
            low_price FLOAT,
            high_price FLOAT,
            open_time VARCHAR(255),
            price FLOAT,
            ch FLOAT,
            chp FLOAT,
            ask FLOAT,
            bid FLOAT,
            price_gram_24k FLOAT,
            price_gram_22k FLOAT,
            price_gram_21k FLOAT,
            price_gram_20k FLOAT,
            price_gram_18k FLOAT,
            price_gram_16k FLOAT,
            price_gram_14k FLOAT,
            price_gram_10k FLOAT
        )
    """
    try:
        cursor.execute(create_table_query)
        conn.commit()
        print("Table created or already exists.")
    except mysql.connector.Error as e:
        print(f"MySQL error: {e}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

def fetch_and_store_gold_price():
    headers = {
        "x-access-token": API_KEY
    }
    try:
        response = requests.get(API_URL, headers=headers)
        response.raise_for_status()
        data = response.json()
        conn = get_db_connection()
        cursor = conn.cursor()

        query = """
            INSERT INTO gold_price_db 
            (timestamp, metal, currency, exchange, symbol, prev_close_price, open_price, low_price, high_price, open_time, price, ch, chp, ask, bid, price_gram_24k, price_gram_22k, price_gram_21k, price_gram_20k, price_gram_18k, price_gram_16k, price_gram_14k, price_gram_10k) 
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        cursor.execute(query, (
            data["timestamp"],
            data["metal"],
            data["currency"],
            data["exchange"],
            data["symbol"],
            data.get("prev_close_price", 0),
            data.get("open_price", 0),
            data.get("low_price", 0),
            data.get("high_price", 0),
            data.get("open_time", ""),
            data["price"],
            data.get("ch", 0),
            data.get("chp", 0),
            data.get("ask", 0),
            data.get("bid", 0),
            data.get("price_gram_24k", 0),
            data.get("price_gram_22k", 0),
            data.get("price_gram_21k", 0),
            data.get("price_gram_20k", 0),
            data.get("price_gram_18k", 0),
            data.get("price_gram_16k", 0),
            data.get("price_gram_14k", 0),
            data.get("price_gram_10k", 0)
        ))
        conn.commit()

        print("Inserted new gold price data successfully.")

    except requests.exceptions.RequestException as e:
        print(f"API request error: {e}")
    except mysql.connector.Error as e:
        print(f"MySQL error: {e}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

create_table_if_not_exists()

if __name__ == "__main__":
    while True:
        fetch_and_store_gold_price()
        time.sleep(2) 
