# Sử dụng Python image
FROM python:3.9-slim

# Copy mã nguồn
WORKDIR /app
COPY . .

# Cài đặt các thư viện cần thiết
RUN pip install flask pandas

# Chạy ứng dụng
CMD ["python", "app.py"]
