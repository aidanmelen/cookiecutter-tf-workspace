terraform {
  required_version = "{{ cookiecutter.tf_version }}"

  # backend "remote" {
  #   hostname = "HOSTNAME"
  #   organization = "ORGANIZATION"

  #   workspaces {
  #     name = "{{ cookiecutter.tf_workspace }}"
  #   }
  # }
}
