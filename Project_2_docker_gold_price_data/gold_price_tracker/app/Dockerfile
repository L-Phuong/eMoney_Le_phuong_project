# Sử dụng image Python base
FROM python:3.9-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy yêu cầu và cài đặt phụ thuộc
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy mã nguồn ứng dụng Flask vào container
COPY . .

# Mở port ứng dụng
EXPOSE 5000

# Chạy Flask ứng dụng
CMD ["python", "app.py"]
