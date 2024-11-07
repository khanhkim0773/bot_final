# Sử dụng image của Rasa
FROM rasa/rasa:3.5.17-full

# Sao chép tất cả các files trong project vào container
COPY . /app

# Đặt thư mục làm việc là /app
WORKDIR /app

# Ghi đè ENTRYPOINT và CMD
ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--cors", "*", "--host", "0.0.0.0"]
