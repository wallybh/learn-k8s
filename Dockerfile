FROM golang:1.17

COPY . .
RUN go build -o server server.go
CMD ["./server"]