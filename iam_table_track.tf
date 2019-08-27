# track role
data "aws_iam_policy_document" "track_table_assume_role" {
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

resource "aws_iam_role" "track_table" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_table-track"

  assume_role_policy = "${data.aws_iam_policy_document.track_table_assume_role.json}"

  tags = {
    Application = "${var.application}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    Workspace   = "${terraform.workspace}"
    terraformed = "true"
  }
}

# track role policy
data "aws_iam_policy_document" "track_table" {
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
      "${aws_dynamodb_table.track.arn}",
      "${aws_dynamodb_table.track.arn}/*",
    ]
  }
}

resource "aws_iam_role_policy" "track_table" {
  name = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_table-track-access"

  role = "${aws_iam_role.track_table.id}"

  policy = "${data.aws_iam_policy_document.track_table.json}"
}
