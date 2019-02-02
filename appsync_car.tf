# car data source
resource "aws_appsync_datasource" "car" {
  api_id = "${aws_appsync_graphql_api.main.id}"
  name   = "car"

  service_role_arn = "${aws_iam_role.car_table.arn}"

  type = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = "${aws_dynamodb_table.car.name}"
  }
}

# get car resolver
data "local_file" "get_car_request" {
  filename = "${path.module}/resolver/get_car.request.vtl"
}

data "local_file" "get_car_response" {
  filename = "${path.module}/resolver/get_car.response.vtl"
}

resource "aws_appsync_resolver" "get_car" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "getCar"
  type  = "Query"

  request_template  = "${data.local_file.get_car_request.content}"
  response_template = "${data.local_file.get_car_response.content}"
}

# list cars resolver
data "local_file" "list_cars_request" {
  filename = "${path.module}/resolver/list_cars.request.vtl"
}

data "local_file" "list_cars_response" {
  filename = "${path.module}/resolver/list_cars.response.vtl"
}

resource "aws_appsync_resolver" "list_cars" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "listCars"
  type  = "Query"

  request_template  = "${data.local_file.list_cars_request.content}"
  response_template = "${data.local_file.list_cars_response.content}"
}

# create car resolver
data "local_file" "create_car_request" {
  filename = "${path.module}/resolver/create_car.request.vtl"
}

data "local_file" "create_car_response" {
  filename = "${path.module}/resolver/create_car.response.vtl"
}

resource "aws_appsync_resolver" "create_car" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "createCar"
  type  = "Mutation"

  request_template  = "${data.local_file.create_car_request.content}"
  response_template = "${data.local_file.create_car_response.content}"
}

# update car resolver
data "local_file" "update_car_request" {
  filename = "${path.module}/resolver/update_car.request.vtl"
}

data "local_file" "update_car_response" {
  filename = "${path.module}/resolver/update_car.response.vtl"
}

resource "aws_appsync_resolver" "update_car" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "updateCar"
  type  = "Mutation"

  request_template  = "${data.local_file.update_car_request.content}"
  response_template = "${data.local_file.update_car_response.content}"
}

# delete car resolver
data "local_file" "delete_car_request" {
  filename = "${path.module}/resolver/delete_car.request.vtl"
}

data "local_file" "delete_car_response" {
  filename = "${path.module}/resolver/delete_car.response.vtl"
}

resource "aws_appsync_resolver" "delete_car" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.car.name}"

  field = "deleteCar"
  type  = "Mutation"

  request_template  = "${data.local_file.delete_car_request.content}"
  response_template = "${data.local_file.delete_car_response.content}"
}

# car manufacturer resolver
data "local_file" "car_manufacturer_request" {
  filename = "${path.module}/resolver/car_manufacturer.request.vtl"
}

data "local_file" "car_manufacturer_response" {
  filename = "${path.module}/resolver/car_manufacturer.response.vtl"
}

resource "aws_appsync_resolver" "car_manufacturer" {
  api_id      = "${aws_appsync_graphql_api.main.id}"
  data_source = "${aws_appsync_datasource.manufacturer.name}"

  field = "manufacturer"
  type  = "Car"

  request_template  = "${data.local_file.car_manufacturer_request.content}"
  response_template = "${data.local_file.car_manufacturer_response.content}"
}
