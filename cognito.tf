# user pool
resource "aws_cognito_user_pool" "main" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}"

  admin_create_user_config = {}

  auto_verified_attributes = [
    "email",
  ]

  email_verification_message = "Your verification code is {####}"
  email_verification_subject = "Your verification code"

  sms_verification_message = "Your verification code is {####}"

  password_policy = {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }

  schema = {
    name                = "email"
    attribute_data_type = "String"

    mutable                  = true
    required                 = true
    developer_only_attribute = false

    string_attribute_constraints = {
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

  user_pool_id = "${aws_cognito_user_pool.main.id}"

  generate_secret        = false
  refresh_token_validity = 7
}
