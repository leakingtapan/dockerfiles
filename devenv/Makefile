IMAGE?=chengpan/wsx
VERSION?=latest

docker:
	docker build -t $(IMAGE):$(VERSION) .

docker-push:
	docker push $(IMAGE):$(VERSION)
