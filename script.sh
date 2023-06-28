docker build -t golang .   

docker run --rm golang

# dentro do container rodar 
# go mod init github.com/italog/go-graphql
# go mod tidy
# go run github.com/99designs/gqlgen generate
# chmod -R $(pwd) para ter permissão para salver os arquivos
# go run cmd/server/server.go

# TABELAS SQLITE
# create table categories (id string, name string, description string)
# create table courses (id string, name string, description string, category_id string)