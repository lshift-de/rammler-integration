TAG = rammler/php-amqplib

default:
	docker build -t $(TAG) .

reference:
	docker run --rm --net container:rabbitmq --volume output:/output $(TAG)

run:
	docker run --rm --net container:rammler --volume output:/output $(TAG)

.PHONY: default reference run
