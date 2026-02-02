resource "gitlab_project_access_token" "this" {
  name    = var.name
  project = var.project
  scopes  = var.scopes

  access_level                  = var.access_level
  description                   = var.description
  expires_at                    = var.expires_at
  validate_past_expiration_date = var.validate_past_expiration_date

  rotation_configuration = {
    expiration_days    = try(var.rotation_configuration["expiration_days"], null)
    rotate_before_days = try(var.rotation_configuration["rotate_before_days"], null)
  }
}
