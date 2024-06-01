FROM golang:1.22.3-alpine

WORKDIR /app

COPY go.mod .
COPY main.go .

RUN go build -o bin .

Expose 9090

ENTRYPOINT [ "/app/bin" ]
