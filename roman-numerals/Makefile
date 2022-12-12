# To check if Makefile has correct syntax (all must be tabs (^I), no spaces)
# cat -e -t -v Makefile

default: docker-test

.PHONY: test
test:
	dotnet test test

.PHONY: docker-build
docker-build:
	docker build -f ../Dockerfile -t codiumteam/tdd-training-csharp:roman-numerals .

.PHONY: docker-test
docker-test:
	docker run --rm -v ${PWD}:/code codiumteam/tdd-training-csharp:roman-numerals make test
