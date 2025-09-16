terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "hello_class" {
  filename = "${path.module}/hello_class.txt"
  content  = <<EOT
Hello from Terraform!
This file was created during the apply step.
EOT
}
