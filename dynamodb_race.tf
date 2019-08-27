# Race table
resource "aws_dynamodb_table" "race" {
  name         = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_race"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "raceChampionshipId"
    type = "S"
  }

  attribute {
    name = "raceTrackId"
    type = "S"
  }

  global_secondary_index {
    name            = "ChampionshipRaces"
    hash_key        = "raceChampionshipId"
    projection_type = "ALL"
  }

  global_secondary_index {
    name            = "RacesTrack"
    hash_key        = "raceTrackId"
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
