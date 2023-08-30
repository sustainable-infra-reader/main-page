start:
	docker build -t hobs-mainpage:latest .
	docker run -d -p 80:80 hobs-mainpage:latest

build:
	docker build -t hobs-mainpage:latest .

run:
	docker run -d -p 80:80 hobs-mainpage:latest

default: start