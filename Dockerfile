# Sử dụng image của Rasa
FROM rasa/rasa:3.5.17-full

# Đặt thư mục làm việc là /app
WORKDIR /app

# Sao chép tất cả các files trong project vào container
COPY . /app

# (Tùy chọn) Thiết lập quyền truy cập, nếu cần thiết
# RUN chmod -R 755 /app

# Chạy Rasa server khi khởi động container
CMD ["run", "--enable-api", "--cors", "*", "--port", "$PORT", "--host", "0.0.0.0"]
