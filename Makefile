all: ./bin/goose up

./bin/goose:
	go get -u github.com/pressly/goose/cmd/goose

./failcli:
	go get -u -d github.com/mattes/migrate/cli
	go get github.com/lib/pq
	go build -tags 'postgres' github.com/mattes/migrate/cli

up:
	$(eval URL=$(shell hjson -c ../api-go/config.hjson  | jq .db.url))
	#./cli -path ./migrations -database $(URL) up
	./bin/goose postgres $(URL) up

