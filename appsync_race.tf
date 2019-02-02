# race data source
resource "aws_appsync_datasource" "race" {
  api_id = "${aws_appsync_graphql_api.main.id}"
  name   = "race"

  service_role_arn = "${aws_iam_role.race_table.arn}"

  type = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = "${aws_dynamodb_table.race.name}"
  }
}

# get race resolver
data "local_file" "get_race_request" {
  filename = "${path.module}/resolver/get_race.request.vtl"
}

data "local_file" "get_race_response" {
  filename = "${path.module}/resolver/get_race.response.vtl"
}

resource "aws_appsync_resolver" "get_race" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "getRace"
  type  = "Query"

  request_template  = "${data.local_file.get_race_request.content}"
  response_template = "${data.local_file.get_race_response.content}"
}

# list races resolver
data "local_file" "list_races_request" {
  filename = "${path.module}/resolver/list_races.request.vtl"
}

data "local_file" "list_races_response" {
  filename = "${path.module}/resolver/list_races.response.vtl"
}

resource "aws_appsync_resolver" "list_races" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "listRaces"
  type  = "Query"

  request_template  = "${data.local_file.list_races_request.content}"
  response_template = "${data.local_file.list_races_response.content}"
}

# create race resolver
data "local_file" "create_race_request" {
  filename = "${path.module}/resolver/create_race.request.vtl"
}

data "local_file" "create_race_response" {
  filename = "${path.module}/resolver/create_race.response.vtl"
}

resource "aws_appsync_resolver" "create_race" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "createRace"
  type  = "Mutation"

  request_template  = "${data.local_file.create_race_request.content}"
  response_template = "${data.local_file.create_race_response.content}"
}

# update race resolver
data "local_file" "update_race_request" {
  filename = "${path.module}/resolver/update_race.request.vtl"
}

data "local_file" "update_race_response" {
  filename = "${path.module}/resolver/update_race.response.vtl"
}

resource "aws_appsync_resolver" "update_race" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "updateRace"
  type  = "Mutation"

  request_template  = "${data.local_file.update_race_request.content}"
  response_template = "${data.local_file.update_race_response.content}"
}

# delete race resolver
data "local_file" "delete_race_request" {
  filename = "${path.module}/resolver/delete_race.request.vtl"
}

data "local_file" "delete_race_response" {
  filename = "${path.module}/resolver/delete_race.response.vtl"
}

resource "aws_appsync_resolver" "delete_race" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "deleteRace"
  type  = "Mutation"

  request_template  = "${data.local_file.delete_race_request.content}"
  response_template = "${data.local_file.delete_race_response.content}"
}

# race championship resolver
data "local_file" "race_championship_request" {
  filename = "${path.module}/resolver/race_championship.request.vtl"
}

data "local_file" "race_championship_response" {
  filename = "${path.module}/resolver/race_championship.response.vtl"
}

resource "aws_appsync_resolver" "race_championship" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.championship.name}"

  field = "championship"
  type  = "Race"

  request_template  = "${data.local_file.race_championship_request.content}"
  response_template = "${data.local_file.race_championship_response.content}"
}

# race track resolver
data "local_file" "race_track_request" {
  filename = "${path.module}/resolver/race_track.request.vtl"
}

data "local_file" "race_track_response" {
  filename = "${path.module}/resolver/race_track.response.vtl"
}

resource "aws_appsync_resolver" "race_track" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "track"
  type  = "Race"

  request_template  = "${data.local_file.race_track_request.content}"
  response_template = "${data.local_file.race_track_response.content}"
}
