SHELL := /bin/bash

.PHONY: all init lint
all: init lint

.PHONY: init
init:
	git init
	git add -A
	pre-commit install

.PHONY: lint
lint:
	git add -A
	pre-commit run
	git add -A

.PHONY: test
test:
	cookiecutter ./ --overwrite-if-exists --no-input --output-dir ./test/
