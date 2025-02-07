module "gitlab_project_access_token" {
  source = "../../"

  project = "example-group-48165/example-project"
  name    = "example-access-token"
  scopes  = ["read_api"]

  rotation_configuration = {
    expiration_days    = 365
    rotate_before_days = 7
  }
}
