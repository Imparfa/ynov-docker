terraform {
  required_providers {
    scalingo = {
      source = "Scalingo/scalingo"
    }
  }
}

provider "scalingo" {}

resource "scalingo_app" "my_app" {
  name = "ynov-devops"
  region = "osc-fr1"
}
