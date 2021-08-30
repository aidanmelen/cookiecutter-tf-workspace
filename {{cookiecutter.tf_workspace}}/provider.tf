{% if cookiecutter.use_aws_provider == "y" -%}
provider "aws" {
  version = ">= 3.55.0"
}
{% endif -%}
