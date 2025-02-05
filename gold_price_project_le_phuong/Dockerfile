# Chọn image cơ bản
FROM python:3.10-slim

# Cài đặt các thư viện hệ thống cần thiết
RUN apt-get update && apt-get install -y build-essential libmariadb-dev && rm -rf /var/lib/apt/lists/*

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép các tệp tin của dự án vào container
COPY . /app

# Cài đặt các thư viện Python yêu cầu
RUN pip install --no-cache-dir -r requirements.txt

# Cấu hình port container
EXPOSE 5000

# Lệnh khởi động Flask app
CMD ["python", "app.py"]
