resource "aws_cognito_user_pool_client" "app_client" {
  name          = "${var.cognito_user_pool_name}-client"
  user_pool_id  = aws_cognito_user_pool.user_pool.id

  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH",
    "ALLOW_CUSTOM_AUTH",
    "ALLOW_USER_SRP_AUTH",
    "ALLOW_ADMIN_NO_SRP_AUTH",
  ]
}