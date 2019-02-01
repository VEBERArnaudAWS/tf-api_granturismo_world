# manufacturer role
data "aws_iam_policy_document" "manufacturer_table_assume_role" {
  statement = {
    effect = "Allow"

    principals = {
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

resource "aws_iam_role" "manufacturer_table" {
  name = "gtsport-ManufacturerTable-${lookup(var.env_names, terraform.workspace)}"

  assume_role_policy = "${data.aws_iam_policy_document.manufacturer_table_assume_role.json}"

  tags = {
    Application = "${var.application}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    Workspace   = "${terraform.workspace}"
    terraformed = "true"
  }
}

# manufacturer role policy
data "aws_iam_policy_document" "manufacturer_table" {
  statement = {
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
      "${aws_dynamodb_table.manufacturer.arn}",
      "${aws_dynamodb_table.manufacturer.arn}/*",
    ]
  }
}

resource "aws_iam_role_policy" "manufacturer_table" {
  name = "gtsport-ManufacturerTableAccess-${lookup(var.env_names, terraform.workspace)}"

  role = "${aws_iam_role.manufacturer_table.id}"

  policy = "${data.aws_iam_policy_document.manufacturer_table.json}"
}
