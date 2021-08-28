terraform {
  backend "remote" {
    organization = "sw-org"

    workspaces {
      name = "git-tf"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}