# Sử dụng image Python base
FROM python:3.9-slim

# Cài đặt các công cụ cần thiết cho Selenium và Chrome
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt Google Chrome và Chromedriver
RUN wget -qO - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-chrome.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && apt-get install -y google-chrome-stable && \
    wget -N https://chromedriver.storage.googleapis.com/$(curl -sS https://chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip -d /usr/local/bin && \
    rm chromedriver_linux64.zip

# Cài đặt Selenium
RUN pip install selenium

# Thiết lập thư mục làm việc
WORKDIR /app

# Lệnh để chạy khi container khởi động (ví dụ chạy một script Python)
CMD ["python", "your_script.py"]
