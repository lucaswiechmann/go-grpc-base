package main

import (
	"fmt"

	server "go-grpc-base/pkg/server"
)

func main() {

	fmt.Println("Starting application")
	server.LiftServer()
}
