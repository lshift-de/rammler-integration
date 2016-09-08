TAG = rammler/bunny

default:
	docker build -t $(TAG) .

prepare:
	docker run --rm --net container:rabbitmq --volume rabbitmq:/var/lib/rabbitmq $(TAG) prepare

reference:
	docker run --rm --net container:rabbitmq --volume output:/output --volume rabbitmq:/var/lib/rabbitmq $(TAG) --format j --out /output/output.json --format p

run:
	docker run --rm --net container:rammler --volume output:/output $(TAG)

.PHONY: default prepare reference run
