
Pre-Requisite
Make sure you create your GitHub account.
Create Personal Access Token
GitHub Provider Terraform:
https://registry.terraform.io/providers/integrations/github/latest/docs

Code Used:




terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = "8c6f0e838e998844a8bb32b0050a7dee6a31a4df"
}

resource "github_repository" "example" {
  name        = "terraform-repo"

  visibility  = "private"

}
