# graphql api
data "local_file" "schema" {
  filename = "${path.module}/schema/schema.graphql"
}

resource "aws_appsync_graphql_api" "main" {
  name = "gtsport-${lookup(var.env_names, terraform.workspace)}"

  authentication_type = "AMAZON_COGNITO_USER_POOLS"

  user_pool_config = {
    aws_region     = "${data.aws_region.current.name}"
    default_action = "ALLOW"
    user_pool_id   = "${aws_cognito_user_pool.main.id}"
  }

  schema = "${data.local_file.schema.content}"

  log_config {
    cloudwatch_logs_role_arn = "${aws_iam_role.appsync_log.arn}"
    field_log_level          = "ALL"
  }
}
