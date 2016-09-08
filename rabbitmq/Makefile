NAME ?= rabbitmq
TAG = lshift.de/rabbitmq

default:
	docker build -t $(TAG) .

run:
	docker run -d --name $(NAME) --volume rabbitmq:/var/lib/rabbitmq $(TAG)

.PHONY: default run
