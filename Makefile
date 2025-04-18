binary = hey

.PHONY: all build clean

all: build

build:
	@echo "Building $(binary) for Windows (amd64)..."
	@GOOS=windows GOARCH=amd64 go build -o ./bin/$(binary)_windows_amd64

	@echo "Building $(binary) for Linux (amd64)..."
	@GOOS=linux GOARCH=amd64 go build -o ./bin/$(binary)_linux_amd64

	@echo "Building $(binary) for Darwin (amd64)..."
	@GOOS=darwin GOARCH=amd64 go build -o ./bin/$(binary)_darwin_amd64

clean:
	@echo "Cleaning up..."
	@rm -rf ./bin
