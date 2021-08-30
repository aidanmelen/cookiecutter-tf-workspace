# developer-notes

{{ cookiecutter.tf_workspace }} is a pre-commit enabled. When pre-commit is installed, the developers git commits will be guarded by various pre-commit checks. These check ensure that your local changes are linted prior to running Github Action workflows remotely.

## Requirements

| Name | Version |
|------|---------|
| [terraform](https://www.terraform.io/) | >= 0.13.0 |
| [golang](https://github.com/golang/go) | >= 0.13.0 |
| [terratest](https://github.com/gruntwork-io/terratest) | >= v0.30.10 |
| [pre-commit](https://github.com/pre-commit/pre-commit) | >= 2.7.1 |
| [terraform-docs](https://github.com/terraform-docs/terraform-docs) | >= v0.10.0 |
| [tflint](https://github.com/terraform-linters/tflint) | >= 0.20.2 |
{%- if cookiecutter.use_aws_provider == "y" %}
| [tfsec](https://github.com/tfsec/tfsec) | >= v0.23.2 |
{%- endif %}

## Recommendations

We strongly recommend you manage `terraform` with [tfenv](https://github.com/tfutils/tfenv). This workspace leverages the [.terraform-version](https://github.com/tfutils/tfenv#terraform-version-file) used by `tfenv`.

## Usage

Use `make` to initialize and install pre-commit.

```bash
$ make
terraform init

Initializing the backend...

Initializing provider plugins...
{%- if cookiecutter.use_aws_provider == "y" %}
- Finding hashicorp/aws versions matching ">= 2.70.0, >= 2.70.*"...
- Installing hashicorp/aws v3.9.0...
- Installed hashicorp/aws v3.9.0 (signed by HashiCorp)
{%- endif %}

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
git init
Initialized empty Git repository in /Users/aidan-melen/workspace/github/aidanmelen/terraform-example-module/.git/
pre-commit install
pre-commit installed at .git/hooks/pre-commit
git add -A
pre-commit run
Terraform fmt............................................................Passed
Terraform validate.......................................................Passed
Terraform validate with tflint...........................................Passed
{%- if cookiecutter.use_aws_provider == "y" %}
Terraform validate with tfsec............................................Passed
{%- endif %}
Terraform docs...........................................................Passed
Fix End of Files.........................................................Passed
Trim Trailing Whitespace.................................................Passed
Check for merge conflicts................................................Passed
{%- if cookiecutter.use_aws_provider == "y" %}
Detect AWS Credentials...................................................Passed
{%- endif %}
```

## Test

Test terraform examples with [Terratest](https://terratest.gruntwork.io/).

```bash
$ make test
go get github.com/gruntwork-io/terratest/modules/terraform
go test test/terraform_workspace_example_test.go
ok  	command-line-arguments	7.592s
```

## Doc generation

Code formatting and documentation for variables and outputs is generated using [pre-commit-terraform hooks](https://github.com/antonbabenko/pre-commit-terraform) which uses [terraform-docs](https://github.com/segmentio/terraform-docs).

Follow [these instructions](https://github.com/antonbabenko/pre-commit-terraform#how-to-install) to install pre-commit locally.

And install `terraform-docs` with `go get github.com/segmentio/terraform-docs` or `brew install terraform-docs`.
