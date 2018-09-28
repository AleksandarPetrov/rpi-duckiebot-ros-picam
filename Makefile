branch=$(shell git rev-parse --abbrev-ref HEAD)

name=duckietown/rpi-duckiebot-ros-picam:$(branch)

build:
	docker build -t $(name) .

push:
	docker push $(name)
