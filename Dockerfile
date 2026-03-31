FROM ghcr.io/quarto-dev/quarto:1.9.32

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . .

CMD ["quarto", "preview", ".", "--host", "0.0.0.0", "--port", "7866"]