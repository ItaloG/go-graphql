FROM golang

WORKDIR /usr/go

COPY . .

RUN apt-get update && apt-get install -y sqlite3

RUN go run github.com/99designs/gqlgen generate \
    && go mod tidy

EXPOSE 8080

CMD [ "go", "run", "cmd/server/server.go" ]