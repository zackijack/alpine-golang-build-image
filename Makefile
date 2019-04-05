default: help

IMAGE_NAME   := zackijack/alpine-golang-build-image

.PHONY: help
help:
	@echo 'Management commands for alpine-golang-build-image:'
	@echo
	@echo 'Usage:'
	@echo '    make build           Build docker image.'
	@echo '    make tag             Tag local image for pushing.'
	@echo '    make push            Push tagged images to registry.'
	@echo

.PHONY: build
build:
	./build.sh "$(IMAGE_NAME)"

.PHONY: semver
semver:
	./semver.sh

.PHONY: tag
tag:  build semver
	./tag.sh $(IMAGE_NAME)

.PHONY: push
push: tag
	./push.sh $(IMAGE_NAME)