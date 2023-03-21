.PHONY: docker push all

docker:
	docker build -t slazzaris/ansible .
push:
	docker image push slazzaris/ansible

all: docker push
