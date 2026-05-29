FROM golang:1.22-alpine

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./
COPY tracker.db ./

RUN go build -o /app/parcel-tracker .

CMD ["/app/parcel-tracker"]
