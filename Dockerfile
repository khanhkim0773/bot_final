# Sử dụng image của Rasa
FROM rasa/rasa:3.5.17 -full

# Sao chép tất cả các files trong project vào container
COPY . /app

# Đặt thư mục làm việc là /app
WORKDIR /app

# Chạy lệnh train nếu cần
RUN rasa train

# Chạy Rasa server khi khởi động container
CMD ["run", "--enable-api", "--cors", "*"]
