[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

# cookiecutter-tf-workspace

![cookiecutter + terraform](https://app.lucidchart.com/publicSegments/view/cc4a32be-9ba9-4c64-863b-6646b2b6f10a/image.png)

Cookiecutter template for creating Terraform Workspaces.

Also checkout [cookiecutter-tf-module](https://github.com/aidanmelen/cookiecutter-tf-module).

## Other documentation

- [The Core Terraform Workflow](https://www.terraform.io/guides/core-workflow.html)
- [One Workspace Per Environment Per Terraform Configuration](https://www.terraform.io/docs/cloud/guides/recommended-practices/part1.html#one-workspace-per-environment-per-terraform-configuration)
- [Create a Workspace](https://learn.hashicorp.com/tutorials/terraform/cloud-workspace-create?in=terraform/cloud-get-started)
- [Should You Create A Module?](https://www.terraform.io/docs/cloud/guides/recommended-practices/part3.2.html#3-create-your-first-module)
- [Using Modules from the Terraform Cloud Private Module Registry](https://www.terraform.io/docs/cloud/registry/using.html)
- [Automate Terraform with GitHub Actions](https://learn.hashicorp.com/tutorials/terraform/github-actions?in=terraform/automation)

## Quickstart

```bash
$ pip install cookiecutter
$ cookiecutter git@github.com:aidanmelen/cookiecutter-tf-workspace.git
$ cd [tf_WORKSPACE]
$ make
```

You will be prompted for basic info (your name, workspace name, etc.) which will be used in the template.

This will create the following:

```
terraform-workspace-example
├── Makefile
├── README.md
├── docs
│   └── developer-notes.md
├── main.tf
├── outputs.tf
├── provider.tf
├── tests
└── variables.tf
```

That's all you need to get started.

## Test

```bash
$ make test
cookiecutter ./ --overwrite-if-exists --no-input --output-dir ./test/
```

## Credits

- This project was inspired heavily by the [terraform-aws-eks community module](https://github.com/terraform-aws-modules/terraform-aws-eks). Many thanks to the [authors](https://github.com/terraform-aws-modules/terraform-aws-eks#authors) for all there hard work.

- Shootout to [cjolowicz](https://github.com/cjolowicz) for demonstrating the power of `pre-commit` and `github actons` in his highly recommend [Hypermodern Python blog](https://cjolowicz.github.io/posts/hypermodern-python-01-setup/)! His work creating the [cookiecutter-hypermodern-python](https://github.com/cjolowicz/cookiecutter-hypermodern-python) was a big inspiration in creating this template.
