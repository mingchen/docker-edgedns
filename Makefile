.PHONY: all build

all: build

build:
	docker build -t mingc/edgedns .
