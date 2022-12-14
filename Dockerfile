FROM golang:1.19.3-bullseye

# membuat direktori app
RUN mkdir /app

# set working directory /app
WORKDIR /app

COPY ./ /app

RUN go mod tidy

RUN go build -o gcp-api

CMD ["./gcp-api"]