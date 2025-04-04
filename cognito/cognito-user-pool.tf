resource "aws_cognito_user_pool" "user_pool" {
  name                     = var.cognito_user_pool_name
  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }
}