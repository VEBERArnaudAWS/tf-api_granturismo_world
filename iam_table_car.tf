# car role
data "aws_iam_policy_document" "car_table_assume_role" {
  statement {
    effect = "Allow"

    principals {
      type = "Service"

      identifiers = [
        "appsync.amazonaws.com",
      ]
    }

    actions = [
      "sts:AssumeRole",
    ]
  }
}

resource "aws_iam_role" "car_table" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_table-car"

  assume_role_policy = "${data.aws_iam_policy_document.car_table_assume_role.json}"

  tags = {
    Application = "${var.application}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    Workspace   = "${terraform.workspace}"
    terraformed = "true"
  }
}

# car role policy
data "aws_iam_policy_document" "car_table" {
  statement {
    effect = "Allow"

    actions = [
      "dynamodb:BatchGetItem",
      "dynamodb:BatchWriteItem",
      "dynamodb:PutItem",
      "dynamodb:DeleteItem",
      "dynamodb:GetItem",
      "dynamodb:Scan",
      "dynamodb:Query",
      "dynamodb:UpdateItem",
    ]

    resources = [
      "${aws_dynamodb_table.car.arn}",
      "${aws_dynamodb_table.car.arn}/*",
    ]
  }
}

resource "aws_iam_role_policy" "car_table" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_table-car-access"

  role = "${aws_iam_role.car_table.id}"

  policy = "${data.aws_iam_policy_document.car_table.json}"
}
