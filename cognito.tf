# user pool
resource "aws_cognito_user_pool" "main" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}"

  admin_create_user_config {}

  auto_verified_attributes = [
    "email",
  ]

  email_verification_message = "Your verification code is {####}"
  email_verification_subject = "Your verification code"

  sms_verification_message = "Your verification code is {####}"

  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }

  schema {
    name                = "email"
    attribute_data_type = "String"

    mutable                  = true
    required                 = true
    developer_only_attribute = false

    string_attribute_constraints {
      max_length = 2048
      min_length = 0
    }
  }
}

# mobile user pool client
resource "aws_cognito_user_pool_client" "mobile" {
  name = "mobile"

  user_pool_id = "${aws_cognito_user_pool.main.id}"

  generate_secret        = true
  refresh_token_validity = 7
}

# web user pool client
resource "aws_cognito_user_pool_client" "web" {
  name = "web"

  user_pool_id = aws_cognito_user_pool.main.id

  generate_secret        = false
  refresh_token_validity = 7

  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows = [
    "code"
  ]
  allowed_oauth_scopes = [
    "aws.cognito.signin.user.admin",
    "email",
    "openid",
    "phone",
    "profile",
  ]

  callback_urls = [
    "http://localhost:3000/"
  ]
  logout_urls = [
    "http://localhost:3000/"
  ]

  supported_identity_providers = [
    "Google"
  ]
}

resource "aws_cognito_identity_provider" "google" {
  user_pool_id  = aws_cognito_user_pool.main.id
  provider_name = "Google"
  provider_type = "Google"

  provider_details = {
    attributes_url                = "https://people.googleapis.com/v1/people/me?personFields="
    attributes_url_add_attributes = true

    authorize_scopes = "profile email openid"
    authorize_url    = "https://accounts.google.com/o/oauth2/v2/auth"

    client_id     = var.google_client_id[terraform.workspace]
    client_secret = var.google_client_secret[terraform.workspace]

    oidc_issuer = "https://accounts.google.com"

    token_request_method = "POST"
    token_url            = "https://www.googleapis.com/oauth2/v4/token"
  }

  attribute_mapping = {
    email          = "email"
    email_verified = "email_verified"
    username       = "sub"
  }
}
