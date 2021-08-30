SHELL := /bin/bash

.PHONY: all install lint
all: install lint

.PHONY: install
install:
	terraform init
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
	go get github.com/gruntwork-io/terratest/modules/terraform
	go test test/deo_eks_terraform_test.go
