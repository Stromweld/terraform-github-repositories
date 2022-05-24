# Test github repo module
provider "github" {
  owner = "Stromweld"
  token = var.github_token
}

module "Test" {
  source = "../"

  name = "DeleteMe-Test1"
}
