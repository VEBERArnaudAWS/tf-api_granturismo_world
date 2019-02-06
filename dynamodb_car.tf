# Car table
resource "aws_dynamodb_table" "car" {
  name           = "Car-${lookup(var.env_names, terraform.workspace)}"
  billing_mode   = "PROVISIONED"
  hash_key       = "id"
  write_capacity = 1
  read_capacity  = 1

  attribute = {
    name = "id"
    type = "S"
  }

  attribute = {
    name = "carManufacturerId"
    type = "S"
  }

  global_secondary_index = {
    name            = "ManufacturerCars"
    write_capacity  = 1
    read_capacity   = 1
    hash_key        = "carManufacturerId"
    projection_type = "ALL"
  }

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  tags = {
    Application = "${var.application}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    Workspace   = "${terraform.workspace}"
    terraformed = "true"
  }
}
