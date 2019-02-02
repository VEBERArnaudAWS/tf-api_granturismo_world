# championship data source
resource "aws_appsync_datasource" "championship" {
  api_id = "${aws_appsync_graphql_api.main.id}"
  name   = "championship"

  service_role_arn = "${aws_iam_role.championship_table.arn}"

  type = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = "${aws_dynamodb_table.championship.name}"
  }
}

# get championship resolver
data "local_file" "get_championship_request" {
  filename = "${path.module}/resolver/get_championship.request.vtl"
}

data "local_file" "get_championship_response" {
  filename = "${path.module}/resolver/get_championship.response.vtl"
}

resource "aws_appsync_resolver" "get_championship" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "getChampionship"
  type  = "Query"

  request_template  = "${data.local_file.get_championship_request.content}"
  response_template = "${data.local_file.get_championship_response.content}"
}

# list championships resolver
data "local_file" "list_championships_request" {
  filename = "${path.module}/resolver/list_championships.request.vtl"
}

data "local_file" "list_championships_response" {
  filename = "${path.module}/resolver/list_championships.response.vtl"
}

resource "aws_appsync_resolver" "list_championships" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "listChampionships"
  type  = "Query"

  request_template  = "${data.local_file.list_championships_request.content}"
  response_template = "${data.local_file.list_championships_response.content}"
}

# create championship resolver
data "local_file" "create_championship_request" {
  filename = "${path.module}/resolver/create_championship.request.vtl"
}

data "local_file" "create_championship_response" {
  filename = "${path.module}/resolver/create_championship.response.vtl"
}

resource "aws_appsync_resolver" "create_championship" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "createChampionship"
  type  = "Mutation"

  request_template  = "${data.local_file.create_championship_request.content}"
  response_template = "${data.local_file.create_championship_response.content}"
}

# update championship resolver
data "local_file" "update_championship_request" {
  filename = "${path.module}/resolver/update_championship.request.vtl"
}

data "local_file" "update_championship_response" {
  filename = "${path.module}/resolver/update_championship.response.vtl"
}

resource "aws_appsync_resolver" "update_championship" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "updateChampionship"
  type  = "Mutation"

  request_template  = "${data.local_file.update_championship_request.content}"
  response_template = "${data.local_file.update_championship_response.content}"
}

# delete championship resolver
data "local_file" "delete_championship_request" {
  filename = "${path.module}/resolver/delete_championship.request.vtl"
}

data "local_file" "delete_championship_response" {
  filename = "${path.module}/resolver/delete_championship.response.vtl"
}

resource "aws_appsync_resolver" "delete_championship" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "deleteChampionship"
  type  = "Mutation"

  request_template  = "${data.local_file.delete_championship_request.content}"
  response_template = "${data.local_file.delete_championship_response.content}"
}

# championship races resolver
data "local_file" "championship_races_request" {
  filename = "${path.module}/resolver/championship_races.request.vtl"
}

data "local_file" "championship_races_response" {
  filename = "${path.module}/resolver/championship_races.response.vtl"
}

resource "aws_appsync_resolver" "championship_races" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "races"
  type  = "Championship"

  request_template  = "${data.local_file.championship_races_request.content}"
  response_template = "${data.local_file.championship_races_response.content}"
}
