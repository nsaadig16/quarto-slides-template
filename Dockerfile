FROM ghcr.io/quarto-dev/quarto:1.9.32

WORKDIR /app

COPY . .

EXPOSE 7866

CMD ["quarto", "preview", ".", "--host", "0.0.0.0", "--port", "7866"]