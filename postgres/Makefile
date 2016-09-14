NAME ?= postgres
TAG = lshift.de/postgres

default:
	docker build -t $(TAG) .

run:
	docker run -d --name $(NAME) $(TAG)

.PHONY: default run
