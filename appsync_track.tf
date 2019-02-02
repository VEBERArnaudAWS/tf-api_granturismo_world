# track data source
resource "aws_appsync_datasource" "track" {
  api_id = "${aws_appsync_graphql_api.main.id}"
  name   = "track"

  service_role_arn = "${aws_iam_role.track_table.arn}"

  type = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = "${aws_dynamodb_table.track.name}"
  }
}

# get track resolver
data "local_file" "get_track_request" {
  filename = "${path.module}/resolver/get_track.request.vtl"
}

data "local_file" "get_track_response" {
  filename = "${path.module}/resolver/get_track.response.vtl"
}

resource "aws_appsync_resolver" "get_track" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "getTrack"
  type  = "Query"

  request_template  = "${data.local_file.get_track_request.content}"
  response_template = "${data.local_file.get_track_response.content}"
}

# list tracks resolver
data "local_file" "list_tracks_request" {
  filename = "${path.module}/resolver/list_tracks.request.vtl"
}

data "local_file" "list_tracks_response" {
  filename = "${path.module}/resolver/list_tracks.response.vtl"
}

resource "aws_appsync_resolver" "list_tracks" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "listTracks"
  type  = "Query"

  request_template  = "${data.local_file.list_tracks_request.content}"
  response_template = "${data.local_file.list_tracks_response.content}"
}

# create track resolver
data "local_file" "create_track_request" {
  filename = "${path.module}/resolver/create_track.request.vtl"
}

data "local_file" "create_track_response" {
  filename = "${path.module}/resolver/create_track.response.vtl"
}

resource "aws_appsync_resolver" "create_track" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "createTrack"
  type  = "Mutation"

  request_template  = "${data.local_file.create_track_request.content}"
  response_template = "${data.local_file.create_track_response.content}"
}

# update track resolver
data "local_file" "update_track_request" {
  filename = "${path.module}/resolver/update_track.request.vtl"
}

data "local_file" "update_track_response" {
  filename = "${path.module}/resolver/update_track.response.vtl"
}

resource "aws_appsync_resolver" "update_track" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "updateTrack"
  type  = "Mutation"

  request_template  = "${data.local_file.update_track_request.content}"
  response_template = "${data.local_file.update_track_response.content}"
}

# delete track resolver
data "local_file" "delete_track_request" {
  filename = "${path.module}/resolver/delete_track.request.vtl"
}

data "local_file" "delete_track_response" {
  filename = "${path.module}/resolver/delete_track.response.vtl"
}

resource "aws_appsync_resolver" "delete_track" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.track.name}"

  field = "deleteTrack"
  type  = "Mutation"

  request_template  = "${data.local_file.delete_track_request.content}"
  response_template = "${data.local_file.delete_track_response.content}"
}

# track races resolver
data "local_file" "track_races_request" {
  filename = "${path.module}/resolver/track_races.request.vtl"
}

data "local_file" "track_races_response" {
  filename = "${path.module}/resolver/track_races.response.vtl"
}

resource "aws_appsync_resolver" "track_races" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.race.name}"

  field = "races"
  type  = "Track"

  request_template  = "${data.local_file.track_races_request.content}"
  response_template = "${data.local_file.track_races_response.content}"
}
