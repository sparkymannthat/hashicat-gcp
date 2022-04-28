terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sparkysorg"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
