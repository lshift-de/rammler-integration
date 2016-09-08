#!/bin/bash -e

cd /php-amqplib
vendor/bin/phpunit --log-junit /output/result.xml
