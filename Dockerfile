FROM golang:1.22.3-alpine

WORKDIR /app

COPY go.mod .
COPY main.go .

RUN go build -o bin .


ENTRYPOINT [ "/app/bin" ]
