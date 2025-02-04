import requests
from bs4 import BeautifulSoup
import time
import json

DATA_FILE = "data/data.json"

def scrape_gold_price():
    url = "https://www.goldapi.io/dashboard?tab=0"  # Thay URL thật ở đây
    headers = {"User-Agent": "Mozilla/5.0"}
    
    response = requests.get(url, headers=headers)
    soup = BeautifulSoup(response.content, "html.parser")
    
    # Chọn dữ liệu theo cấu trúc HTML của bạn
    price_element = soup.find("span", class_="tv-ticker-item-last__body")
    change_element = soup.find("span", class_="tv-ticker-item-last__change-wrapper js-symbol-change-direction tv-ticker-item-last__change-wrapper--up")
    
    price = price_element.text.strip() if price_element else "N/A"
    change = change_element.text.strip() if change_element else "N/A"
    
    return {"price": price, "change": change, "timestamp": time.strftime("%Y-%m-%d %H:%M:%S")}

print(scrape_gold_price())
