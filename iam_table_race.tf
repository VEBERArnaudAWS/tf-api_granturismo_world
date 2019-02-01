# race role
data "aws_iam_policy_document" "race_table_assume_role" {
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

resource "aws_iam_role" "race_table" {
  name = "gtsport-RaceTable-${lookup(var.env_names, terraform.workspace)}"

  assume_role_policy = "${data.aws_iam_policy_document.race_table_assume_role.json}"

  tags = {
    Application = "${var.application}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    Workspace   = "${terraform.workspace}"
    terraformed = "true"
  }
}

# race role policy
data "aws_iam_policy_document" "race_table" {
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
      "${aws_dynamodb_table.race.arn}",
      "${aws_dynamodb_table.race.arn}/*",
    ]
  }
}

resource "aws_iam_role_policy" "race_table" {
  name = "gtsport-RaceTableAccess-${lookup(var.env_names, terraform.workspace)}"

  role = "${aws_iam_role.race_table.id}"

  policy = "${data.aws_iam_policy_document.race_table.json}"
}
