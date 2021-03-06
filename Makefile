TAG?=latest
REGISTRY?=srcd
IMAGE=coreos-nvidia-driver-installer

container:
	docker build --pull -t ${REGISTRY}/${IMAGE}:${TAG} .

push:
	docker push ${REGISTRY}/${IMAGE}:${TAG}

.PHONY: container push
