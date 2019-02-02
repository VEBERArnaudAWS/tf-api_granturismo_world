# manufacturer data source
resource "aws_appsync_datasource" "manufacturer" {
  api_id = "${aws_appsync_graphql_api.main.id}"
  name   = "manufacturer"

  service_role_arn = "${aws_iam_role.manufacturer_table.arn}"

  type = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = "${aws_dynamodb_table.manufacturer.name}"
  }
}

# get manufacturer resolver
data "local_file" "get_manufacturer_request" {
  filename = "${path.module}/resolver/get_manufacturer.request.vtl"
}

data "local_file" "get_manufacturer_response" {
  filename = "${path.module}/resolver/get_manufacturer.response.vtl"
}

resource "aws_appsync_resolver" "get_manufacturer" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "getManufacturer"
  type  = "Query"

  request_template  = "${data.local_file.get_manufacturer_request.content}"
  response_template = "${data.local_file.get_manufacturer_response.content}"
}

# list manufacturers resolver
data "local_file" "list_manufacturers_request" {
  filename = "${path.module}/resolver/list_manufacturers.request.vtl"
}

data "local_file" "list_manufacturers_response" {
  filename = "${path.module}/resolver/list_manufacturers.response.vtl"
}

resource "aws_appsync_resolver" "list_manufacturers" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "listManufacturers"
  type  = "Query"

  request_template  = "${data.local_file.list_manufacturers_request.content}"
  response_template = "${data.local_file.list_manufacturers_response.content}"
}

# create manufacturer resolver
data "local_file" "create_manufacturer_request" {
  filename = "${path.module}/resolver/create_manufacturer.request.vtl"
}

data "local_file" "create_manufacturer_response" {
  filename = "${path.module}/resolver/create_manufacturer.response.vtl"
}

resource "aws_appsync_resolver" "create_manufacturer" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "createManufacturer"
  type  = "Mutation"

  request_template  = "${data.local_file.create_manufacturer_request.content}"
  response_template = "${data.local_file.create_manufacturer_response.content}"
}

# update manufacturer resolver
data "local_file" "update_manufacturer_request" {
  filename = "${path.module}/resolver/update_manufacturer.request.vtl"
}

data "local_file" "update_manufacturer_response" {
  filename = "${path.module}/resolver/update_manufacturer.response.vtl"
}

resource "aws_appsync_resolver" "update_manufacturer" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "updateManufacturer"
  type  = "Mutation"

  request_template  = "${data.local_file.update_manufacturer_request.content}"
  response_template = "${data.local_file.update_manufacturer_response.content}"
}

# delete manufacturer resolver
data "local_file" "delete_manufacturer_request" {
  filename = "${path.module}/resolver/delete_manufacturer.request.vtl"
}

data "local_file" "delete_manufacturer_response" {
  filename = "${path.module}/resolver/delete_manufacturer.response.vtl"
}

resource "aws_appsync_resolver" "delete_manufacturer" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "deleteManufacturer"
  type  = "Mutation"

  request_template  = "${data.local_file.delete_manufacturer_request.content}"
  response_template = "${data.local_file.delete_manufacturer_response.content}"
}

# manufacturer cars resolver
data "local_file" "manufacturer_cars_request" {
  filename = "${path.module}/resolver/manufacturer_cars.request.vtl"
}

data "local_file" "manufacturer_cars_response" {
  filename = "${path.module}/resolver/manufacturer_cars.response.vtl"
}

resource "aws_appsync_resolver" "manufacturer_cars" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "cars"
  type  = "Manufacturer"

  request_template  = "${data.local_file.manufacturer_cars_request.content}"
  response_template = "${data.local_file.manufacturer_cars_response.content}"
}
