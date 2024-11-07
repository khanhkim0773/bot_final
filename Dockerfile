# Sử dụng image của Rasa
FROM rasa/rasa:3.5.17-full

# Sao chép tất cả các files trong project vào container
COPY . /app

# Đặt thư mục làm việc là /app
WORKDIR /app

# Thiết lập quyền truy cập
RUN chmod -R 755 /app

# Chạy Rasa server khi khởi động container
CMD ["run", "--enable-api", "--cors", "*", "--port", "$PORT", "--host", "0.0.0.0"]
