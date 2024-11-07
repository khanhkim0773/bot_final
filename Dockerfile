# Sử dụng image của Rasa
FROM rasa/rasa:3.5.17-full

# Sao chép tất cả các files trong project vào container
COPY . /app

# Đặt thư mục làm việc là /app
WORKDIR /app

# Ghi đè ENTRYPOINT bằng một lệnh shell rỗng để tránh nhầm lẫn
ENTRYPOINT ["/bin/bash", "-c"]

# Chạy Rasa server khi khởi động container
CMD ["rasa run --enable-api --cors '*' --host '0.0.0.0' --port 5005"]
