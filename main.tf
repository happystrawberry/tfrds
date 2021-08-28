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
  provisioner "local-exec" {
    command = "echo 'call out from provisioner local-exec' "
  }
}