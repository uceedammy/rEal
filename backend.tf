terraform {
  backend "remote" {
    organization = "silverink"

    workspaces {
      name = "deploying-prod-north-europe"
    }
  }
}