KATA_DIRECTORIES := $(wildcard */)
.PHONY: docker-build docker-build-$(KATA_DIRECTORIES) docker-push docker-remove-images
docker-build: docker-build-$(KATA_DIRECTORIES)

docker-build-$(KATA_DIRECTORIES):
	cd $(subst docker-build-,,$@) && make docker-build

docker-push:
	docker push codiumteam/tdd-training-csharp --all-tags

docker-remove-images:
	docker images codiumteam/tdd-training-csharp -q | xargs  docker rmi --force $1