all: ./bin/goose up

./bin/goose:
	go get -u github.com/pressly/goose/cmd/goose

up:
	$(eval URL=$(shell hjson -c ../api-go/config.hjson  | jq .db.url))
	./bin/goose -dir migrations postgres $(URL) up
	make status

down:
	@echo down one migration
	$(eval URL=$(shell hjson -c ../api-go/config.hjson  | jq .db.url))
	./bin/goose -dir migrations postgres $(URL) down
	make status

status:
	$(eval URL=$(shell hjson -c ../api-go/config.hjson  | jq .db.url))
	./bin/goose -dir migrations postgres $(URL) status
