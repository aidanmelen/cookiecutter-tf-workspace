[![Lint Status](https://github.com/{{ cookiecutter.github_account }}/{{ cookiecutter.tf_workspace }}/workflows/Lint/badge.svg)](https://github.com/{{ cookiecutter.github_account }}/{{ cookiecutter.tf_workspace }}/actions)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![cookiecutter-tf-workspace](https://img.shields.io/badge/cookiecutter--tf--workspace-enabled-brightgreen)](https://github.com/aidanmelen/cookiecutter-tf-workspace)


# {{ cookiecutter.tf_workspace }}

{{ cookiecutter.description }}

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## Test

```bash
make test
```

## Makefile Targets

```text
Available targets:

  all                                 Run install and lint
  install                             Initialize and install pre-commit
  lint                                Lint terraform code
  test-setup                          Get Terratest golang package
  test                                Run test
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= {{ cookiecutter.tf_version }} |
{%- if cookiecutter.use_aws_provider == "y" %}
| aws | >= 2.70.0 |
{%- endif %}

## Providers

No provider.

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| hello\_world | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
