resource "aws_apigatewayv2_api" "http_api" {
  name          = "${var.cognito_user_pool_name}-api"
  protocol_type = "HTTP"

  cors_configuration {
    allow_origins        = ["*"]
    allow_methods        = ["GET", "POST"]
    allow_headers        = ["Authorization"]
    expose_headers       = ["Authorization"]
    max_age              = 3600
    allow_credentials    = true
  }
}

resource "aws_apigatewayv2_authorizer" "cognito_auth" {
  api_id             = aws_apigatewayv2_api.http_api.id
  authorizer_type    = "JWT"
  
  identity_sources   = ["$request.header.Authorization"]
  
  jwt_configuration {
    issuer           = aws_cognito_user_pool.user_pool.endpoint_url
    audience         = [aws_cognito_user_pool_client.app_client.id]
  }
}