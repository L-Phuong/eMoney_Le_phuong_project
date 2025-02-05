# Base image
FROM python:3.9-slim

# Làm việc trong thư mục /app
WORKDIR /app

# Copy toàn bộ mã nguồn
COPY app/ /app

# Cài đặt dependencies
RUN pip install flask beautifulsoup4 requests

# Tạo volume để lưu dữ liệu
VOLUME ["/app/data"]

# Lệnh khởi chạy scraper
CMD ["python", "scraper.py"]
