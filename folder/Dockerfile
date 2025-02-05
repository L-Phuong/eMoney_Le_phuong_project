# Sử dụng image Python chính thức từ Docker Hub
FROM python:3.9-slim

# Cài đặt các thư viện hệ thống cần thiết
RUN apt-get update && apt-get install -y \
    gcc \
    libmariadb-dev \
    && rm -rf /var/lib/apt/lists/*

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép file requirements.txt vào container
COPY requirements.txt .

# Cài đặt các thư viện Python từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Mở cổng mà ứng dụng sẽ chạy
EXPOSE 5000

# Lệnh để chạy ứng dụng
CMD ["python", "app.py"]
