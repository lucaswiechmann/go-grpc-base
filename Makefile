generate:
	@protoc --proto_path=pkg/proto --go_out=plugins=grpc:pkg/proto/gen --go_opt=paths=source_relative pkg/proto/user.proto

build:
	@echo "---- Building Application ----"
	@go build -o server-bin pkg/server/server.go
	@go build -o client-bin cmd/main.go

run:
	@echo "---- Running Server ----"
	@go run cmd/main.go

run_client:
	@echo "---- Running Client ----"
	@go run pkg/client/client.go