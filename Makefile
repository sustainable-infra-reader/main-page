.DEFAULT_GOAL := help

start: ## Builds then starts the container
	docker build -t hobs-mainpage:latest .
	docker run -d -p 80:80 hobs-mainpage:latest

build: ## Only builds the Dockerfile
	docker build -t hobs-mainpage:latest .

run: ## Only runs the container
	docker run -d -p 80:80 hobs-mainpage:latest

help: ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
