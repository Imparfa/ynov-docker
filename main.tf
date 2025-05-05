terraform {
  required_providers {
    scalingo = {
      source = "Scalingo/scalingo"
    }
  }
}

provider "scalingo" {
  token = var.scalingo_token
}

resource "scalingo_app" "my_app" {
  name = "ynov-devops"
  region = "osc-fr1"
}
