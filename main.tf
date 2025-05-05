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
  name = "nom-de-mon-app"
  region = "osc-fr1"
}
