# terraform-github-repositories

Terraform module for GitHub Repositories

## References

<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository>
<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch>
<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default>
<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection>
<https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_collaborator>

## Usage

```hcl
provider "github" {
  owner = "OrgName"
  token = var.github_token
}

module "repositories" {
  source  = "app.terraform.io/Stromweld/repositories/github"
  version = ">= 1.0.0"

  name = "example"
}
```

## Inputs

| Name | Type         | Default | Required | Description |
|------|--------------|---------|----------|-------------|
| `name` | string       | | yes | Name of the repository|
| `description` | string       | varies by repository type | no | Description of repository contents |
| `visibility` | string       | "public" | no | Allows your repository to be seen by general public or not |
| `is_template` | bool         | false | no | Set to true to tell GitHub that this is a template repository |
| `gitignore_template` | string       | varies by repository type | no | Set gitignore file based on template |
| `archived` | bool         | null | no | Specifies if the repository should be archived |
| `pages` | map(any)     | {} | no | GitHub Pages configuration |
| `topics` | list(string) | varies by repository type | no | The list of topics of the repository |
| `template` | map(any)     | {} | no | Create repository from template repository |
|`github_actions_secrets` | map(any) | {} | no | Github Actions Secrets |
| `cookbook` | bool         | false | no | Enables Chef Cookbook features |
| `terraform` | bool         | false | no | Enables Terraform features |
| `tf_module` | bool         | false | no | Enables Terraform Module features |
| `github_repository_collaborators` | list(string) | [] | no | List of Collaborators to add to repository |
| `github_branch` | map(string) | {} | no | Map of additional branches to create |
| `github_branch_protection` | map(any) | { main = {} } | no | Map of github_branch_protection attributes |

## Outputs

| Name            | Description              |
|-----------------|--------------------------|
