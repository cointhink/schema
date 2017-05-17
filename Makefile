all: ./bin/goose up

./bin/goose:
	go get -u github.com/pressly/goose/cmd/goose

up:
	$(eval URL=$(shell hjson -c ../api-go/config.hjson  | jq .db.url))
	./bin/goose -dir migrations postgres $(URL) up

