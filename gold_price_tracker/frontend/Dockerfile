# Sử dụng image Nginx làm base
FROM nginx:alpine

# Copy tệp HTML và các tệp tĩnh vào thư mục Nginx
COPY ./templates /usr/share/nginx/html
COPY ./static /usr/share/nginx/html/static

# Mở port 80 cho Nginx
EXPOSE 80
