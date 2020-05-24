IMAGE?=chengpan/wsx
VERSION?=latest

docker:
	docker build -t $(IMAGE):$(VERSION) .

docker-push:
	docker push $(IMAGE):$(VERSION)

docker-firecracker:
	docker build -t $(IMAGE):firecracker-$(VERSION) -f Dockerfile.firecracker .

docker-push-firecracker:
	docker push $(IMAGE):firecracker-$(VERSION)
