import requests
from bs4 import BeautifulSoup
import time
import json

DATA_FILE = "data/data.json"

def scrape_gold_price():
    url = "https://www.tradingview.com/symbols/XAUUSD/?utm_campaign=single-quote&utm_medium=widget&utm_source=www.goldapi.io"  # Thay URL thật ở đây
    headers = {"User-Agent": "Mozilla/5.0"}
    
    response = requests.get(url, headers=headers)
    soup = BeautifulSoup(response.content, "html.parser")
    
    # Chọn dữ liệu theo cấu trúc HTML của bạn
    price_element = soup.find("span", class_="js-symbol-last")
    change_element = soup.find("span", class_="js-symbol-change-pt")
    
    price = price_element.text.strip() if price_element else "N/A"
    change = change_element.text.strip() if change_element else "N/A"
    
    return {"price": price, "change": change, "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")}

def save_to_file(data):
    with open(DATA_FILE, "a") as file:
        file.write(json.dumps(data) + "\n")

if __name__ == "__main__":
    print("Scraper is running...")
    while True:
        try:
            data = scrape_gold_price()
            save_to_file(data)
            print(f"Saved: {data}")
        except Exception as e:
            print(f"Error: {e}")
        time.sleep(2)  # Lấy dữ liệu mỗi 2 giây
