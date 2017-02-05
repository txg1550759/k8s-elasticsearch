IMAGE = youdowell/k8s-elasticsearch
VERSION = 0.1.0

all: build

build:
	docker build -t $(IMAGE):$(VERSION) --rm ./image

release: build
	docker push $(IMAGE):$(VERSION)

clean:
	docker rmi $(IMAGE):$(VERSION)