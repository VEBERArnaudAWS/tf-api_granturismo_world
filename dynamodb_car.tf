# Car table
resource "aws_dynamodb_table" "car" {
  name         = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_car"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "carManufacturerId"
    type = "S"
  }

  global_secondary_index {
    name            = "ManufacturerCars"
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

# abarth_1500-biposto-bertone-bat-1-1952 item
data "local_file" "car_abarth_1500-biposto-bertone-bat-1-1952" {
  filename = "${path.module}/item/car/abarth_1500-biposto-bertone-bat-1-1952.json"
}

resource "aws_dynamodb_table_item" "car_abarth_1500-biposto-bertone-bat-1-1952" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_abarth_1500-biposto-bertone-bat-1-1952.content}"
}

# abarth_500 item
data "local_file" "car_abarth_500" {
  filename = "${path.module}/item/car/abarth_500.json"
}

resource "aws_dynamodb_table_item" "car_abarth_500" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_abarth_500.content}"
}

# alfa-romeo_4c-gr3-road-car item
data "local_file" "car_alfa-romeo_4c-gr3-road-car" {
  filename = "${path.module}/item/car/alfa-romeo_4c-gr3-road-car.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_4c-gr3-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_4c-gr3-road-car.content}"
}

# alfa-romeo_4c-gr3 item
data "local_file" "car_alfa-romeo_4c-gr3" {
  filename = "${path.module}/item/car/alfa-romeo_4c-gr3.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_4c-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_4c-gr3.content}"
}

# alfa-romeo_4c-gr4 item
data "local_file" "car_alfa-romeo_4c-gr4" {
  filename = "${path.module}/item/car/alfa-romeo_4c-gr4.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_4c-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_4c-gr4.content}"
}

# alfa-romeo_4c-launch-edition item
data "local_file" "car_alfa-romeo_4c-launch-edition" {
  filename = "${path.module}/item/car/alfa-romeo_4c-launch-edition.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_4c-launch-edition" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_4c-launch-edition.content}"
}

# alfa-romeo_giulia-tz2-carrozzata-da-zagato-cn-ar750106 item
data "local_file" "car_alfa-romeo_giulia-tz2-carrozzata-da-zagato-cn-ar750106" {
  filename = "${path.module}/item/car/alfa-romeo_giulia-tz2-carrozzata-da-zagato-cn-ar750106.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_giulia-tz2-carrozzata-da-zagato-cn-ar750106" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_giulia-tz2-carrozzata-da-zagato-cn-ar750106.content}"
}

# alfa-romeo_mito-1-4-t-sport item
data "local_file" "car_alfa-romeo_mito-1-4-t-sport" {
  filename = "${path.module}/item/car/alfa-romeo_mito-1-4-t-sport.json"
}

resource "aws_dynamodb_table_item" "car_alfa-romeo_mito-1-4-t-sport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alfa-romeo_mito-1-4-t-sport.content}"
}

# alpine_a110-1600s item
data "local_file" "car_alpine_a110-1600s" {
  filename = "${path.module}/item/car/alpine_a110-1600s.json"
}

resource "aws_dynamodb_table_item" "car_alpine_a110-1600s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alpine_a110-1600s.content}"
}

# alpine_a110-premiere-edition item
data "local_file" "car_alpine_a110-premiere-edition" {
  filename = "${path.module}/item/car/alpine_a110-premiere-edition.json"
}

resource "aws_dynamodb_table_item" "car_alpine_a110-premiere-edition" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alpine_a110-premiere-edition.content}"
}

# alpine_vision-gran-turismo-2017 item
data "local_file" "car_alpine_vision-gran-turismo-2017" {
  filename = "${path.module}/item/car/alpine_vision-gran-turismo-2017.json"
}

resource "aws_dynamodb_table_item" "car_alpine_vision-gran-turismo-2017" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alpine_vision-gran-turismo-2017.content}"
}

# alpine_vision-gran-turismo-race-mode item
data "local_file" "car_alpine_vision-gran-turismo-race-mode" {
  filename = "${path.module}/item/car/alpine_vision-gran-turismo-race-mode.json"
}

resource "aws_dynamodb_table_item" "car_alpine_vision-gran-turismo-race-mode" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alpine_vision-gran-turismo-race-mode.content}"
}

# alpine_vision-gran-turismo item
data "local_file" "car_alpine_vision-gran-turismo" {
  filename = "${path.module}/item/car/alpine_vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_alpine_vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_alpine_vision-gran-turismo.content}"
}

# amuse_s2000-gt1-turbo item
data "local_file" "car_amuse_s2000-gt1-turbo" {
  filename = "${path.module}/item/car/amuse_s2000-gt1-turbo.json"
}

resource "aws_dynamodb_table_item" "car_amuse_s2000-gt1-turbo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_amuse_s2000-gt1-turbo.content}"
}

# aston-martin_db11 item
data "local_file" "car_aston-martin_db11" {
  filename = "${path.module}/item/car/aston-martin_db11.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_db11" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_db11.content}"
}

# aston-martin_db3s-cn1 item
data "local_file" "car_aston-martin_db3s-cn1" {
  filename = "${path.module}/item/car/aston-martin_db3s-cn1.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_db3s-cn1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_db3s-cn1.content}"
}

# aston-martin_dp-100-vision-gran-turismo item
data "local_file" "car_aston-martin_dp-100-vision-gran-turismo" {
  filename = "${path.module}/item/car/aston-martin_dp-100-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_dp-100-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_dp-100-vision-gran-turismo.content}"
}

# aston-martin_one-77 item
data "local_file" "car_aston-martin_one-77" {
  filename = "${path.module}/item/car/aston-martin_one-77.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_one-77" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_one-77.content}"
}

# aston-martin_v12-vantage-gt3 item
data "local_file" "car_aston-martin_v12-vantage-gt3" {
  filename = "${path.module}/item/car/aston-martin_v12-vantage-gt3.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_v12-vantage-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_v12-vantage-gt3.content}"
}

# aston-martin_v8-vantage-s item
data "local_file" "car_aston-martin_v8-vantage-s" {
  filename = "${path.module}/item/car/aston-martin_v8-vantage-s.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_v8-vantage-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_v8-vantage-s.content}"
}

# aston-martin_vantage-gr4 item
data "local_file" "car_aston-martin_vantage-gr4" {
  filename = "${path.module}/item/car/aston-martin_vantage-gr4.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_vantage-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_vantage-gr4.content}"
}

# aston-martin_vulcan item
data "local_file" "car_aston-martin_vulcan" {
  filename = "${path.module}/item/car/aston-martin_vulcan.json"
}

resource "aws_dynamodb_table_item" "car_aston-martin_vulcan" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_aston-martin_vulcan.content}"
}

# audi_e-tron-vision-gran-turismo item
data "local_file" "car_audi_e-tron-vision-gran-turismo" {
  filename = "${path.module}/item/car/audi_e-tron-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_audi_e-tron-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_e-tron-vision-gran-turismo.content}"
}

# audi_r18-audi-sport-team-joest item
data "local_file" "car_audi_r18-audi-sport-team-joest" {
  filename = "${path.module}/item/car/audi_r18-audi-sport-team-joest.json"
}

resource "aws_dynamodb_table_item" "car_audi_r18-audi-sport-team-joest" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_r18-audi-sport-team-joest.content}"
}

# audi_r18-tdi-audi-sport-team-joest item
data "local_file" "car_audi_r18-tdi-audi-sport-team-joest" {
  filename = "${path.module}/item/car/audi_r18-tdi-audi-sport-team-joest.json"
}

resource "aws_dynamodb_table_item" "car_audi_r18-tdi-audi-sport-team-joest" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_r18-tdi-audi-sport-team-joest.content}"
}

# audi_r8-4-2-fsi-r-tronix item
data "local_file" "car_audi_r8-4-2-fsi-r-tronix" {
  filename = "${path.module}/item/car/audi_r8-4-2-fsi-r-tronix.json"
}

resource "aws_dynamodb_table_item" "car_audi_r8-4-2-fsi-r-tronix" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_r8-4-2-fsi-r-tronix.content}"
}

# audi_r8-lms-audi-sport-team-wrt item
data "local_file" "car_audi_r8-lms-audi-sport-team-wrt" {
  filename = "${path.module}/item/car/audi_r8-lms-audi-sport-team-wrt.json"
}

resource "aws_dynamodb_table_item" "car_audi_r8-lms-audi-sport-team-wrt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_r8-lms-audi-sport-team-wrt.content}"
}

# audi_sport-quattro-s1-pikes-peak item
data "local_file" "car_audi_sport-quattro-s1-pikes-peak" {
  filename = "${path.module}/item/car/audi_sport-quattro-s1-pikes-peak.json"
}

resource "aws_dynamodb_table_item" "car_audi_sport-quattro-s1-pikes-peak" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_sport-quattro-s1-pikes-peak.content}"
}

# audi_tt-cup item
data "local_file" "car_audi_tt-cup" {
  filename = "${path.module}/item/car/audi_tt-cup.json"
}

resource "aws_dynamodb_table_item" "car_audi_tt-cup" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_tt-cup.content}"
}

# audi_tt-cup item
data "local_file" "car_audi_tt-coupe-3_2-quattro" {
  filename = "${path.module}/item/car/audi_tt-coupe-3_2-quattro.json"
}

resource "aws_dynamodb_table_item" "car_audi_tt-coupe-3_2-quattro" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_tt-coupe-3_2-quattro.content}"
}

# audi_tts-coupe item
data "local_file" "car_audi_tts-coupe" {
  filename = "${path.module}/item/car/audi_tts-coupe.json"
}

resource "aws_dynamodb_table_item" "car_audi_tts-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_tts-coupe.content}"
}

# audi_vision-gran-turismo item
data "local_file" "car_audi_vision-gran-turismo" {
  filename = "${path.module}/item/car/audi_vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_audi_vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_audi_vision-gran-turismo.content}"
}

# bmw_i3 item
data "local_file" "car_bmw_i3" {
  filename = "${path.module}/item/car/bmw_i3.json"
}

resource "aws_dynamodb_table_item" "car_bmw_i3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_i3.content}"
}

# bmw_m3-coupe item
data "local_file" "car_bmw_m3-coupe" {
  filename = "${path.module}/item/car/bmw_m3-coupe.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m3-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m3-coupe.content}"
}

# bmw_m3-gt-bmw-notorsport item
data "local_file" "car_bmw_m3-gt-bmw-notorsport" {
  filename = "${path.module}/item/car/bmw_m3-gt-bmw-notorsport.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m3-gt-bmw-notorsport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m3-gt-bmw-notorsport.content}"
}

# bmw_m3-sport-evolution item
data "local_file" "car_bmw_m3-sport-evolution" {
  filename = "${path.module}/item/car/bmw_m3-sport-evolution.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m3-sport-evolution" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m3-sport-evolution.content}"
}

# bmw_m4-coupe item
data "local_file" "car_bmw_m4-coupe" {
  filename = "${path.module}/item/car/bmw_m4-coupe.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m4-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m4-coupe.content}"
}

# bmw_m4-gr4 item
data "local_file" "car_bmw_m4-gr4" {
  filename = "${path.module}/item/car/bmw_m4-gr4.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m4-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m4-gr4.content}"
}

# bmw_m4-safety-car item
data "local_file" "car_bmw_m4-safety-car" {
  filename = "${path.module}/item/car/bmw_m4-safety-car.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m4-safety-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m4-safety-car.content}"
}

# bmw_m6-gt3-m-power-livery item
data "local_file" "car_bmw_m6-gt3-m-power-livery" {
  filename = "${path.module}/item/car/bmw_m6-gt3-m-power-livery.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m6-gt3-m-power-livery" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m6-gt3-m-power-livery.content}"
}

# bmw_m6-gt3-walkenhorst-motorsport item
data "local_file" "car_bmw_m6-gt3-walkenhorst-motorsport" {
  filename = "${path.module}/item/car/bmw_m6-gt3-walkenhorst-motorsport.json"
}

resource "aws_dynamodb_table_item" "car_bmw_m6-gt3-walkenhorst-motorsport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_m6-gt3-walkenhorst-motorsport.content}"
}

# bmw_vision-gran-turismo item
data "local_file" "car_bmw_vision-gran-turismo" {
  filename = "${path.module}/item/car/bmw_vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_bmw_vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_vision-gran-turismo.content}"
}

# bmw_z4-gt3 item
data "local_file" "car_bmw_z4-gt3" {
  filename = "${path.module}/item/car/bmw_z4-gt3.json"
}

resource "aws_dynamodb_table_item" "car_bmw_z4-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_z4-gt3.content}"
}

# bmw_z8 item
data "local_file" "car_bmw_z8" {
  filename = "${path.module}/item/car/bmw_z8.json"
}

resource "aws_dynamodb_table_item" "car_bmw_z8" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bmw_z8.content}"
}

# bugatti_veyron-16-4 item
data "local_file" "car_bugatti_veyron-16-4" {
  filename = "${path.module}/item/car/bugatti_veyron-16-4.json"
}

resource "aws_dynamodb_table_item" "car_bugatti_veyron-16-4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bugatti_veyron-16-4.content}"
}

# bugatti_veyron-gr4 item
data "local_file" "car_bugatti_veyron-gr4" {
  filename = "${path.module}/item/car/bugatti_veyron-gr4.json"
}

resource "aws_dynamodb_table_item" "car_bugatti_veyron-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bugatti_veyron-gr4.content}"
}

# bugatti_vision-gran-turismo-gr1 item
data "local_file" "car_bugatti_vision-gran-turismo-gr1" {
  filename = "${path.module}/item/car/bugatti_vision-gran-turismo-gr1.json"
}

resource "aws_dynamodb_table_item" "car_bugatti_vision-gran-turismo-gr1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bugatti_vision-gran-turismo-gr1.content}"
}

# bugatti_vision-gran-turismo-grx item
data "local_file" "car_bugatti_vision-gran-turismo-grx" {
  filename = "${path.module}/item/car/bugatti_vision-gran-turismo-grx.json"
}

resource "aws_dynamodb_table_item" "car_bugatti_vision-gran-turismo-grx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_bugatti_vision-gran-turismo-grx.content}"
}

# chaparral_chevrolet-chaparral-2x-vision-gran-turismo item
data "local_file" "car_chaparral_chevrolet-chaparral-2x-vision-gran-turismo" {
  filename = "${path.module}/item/car/chaparral_chevrolet-chaparral-2x-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_chaparral_chevrolet-chaparral-2x-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chaparral_chevrolet-chaparral-2x-vision-gran-turismo.content}"
}

# chevrolet_camaro-ss item
data "local_file" "car_chevrolet_camaro-ss" {
  filename = "${path.module}/item/car/chevrolet_camaro-ss.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_camaro-ss" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_camaro-ss.content}"
}

# chevrolet_corvette-c7-gr3-road-car item
data "local_file" "car_chevrolet_corvette-c7-gr3-road-car" {
  filename = "${path.module}/item/car/chevrolet_corvette-c7-gr3-road-car.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-c7-gr3-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-c7-gr3-road-car.content}"
}

# chevrolet_corvette-c7-gr3 item
data "local_file" "car_chevrolet_corvette-c7-gr3" {
  filename = "${path.module}/item/car/chevrolet_corvette-c7-gr3.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-c7-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-c7-gr3.content}"
}

# chevrolet_corvette-c7-gr4 item
data "local_file" "car_chevrolet_corvette-c7-gr4" {
  filename = "${path.module}/item/car/chevrolet_corvette-c7-gr4.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-c7-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-c7-gr4.content}"
}

# chevrolet_corvette-sting-ray-sport-coupe-c2 item
data "local_file" "car_chevrolet_corvette-sting-ray-sport-coupe-c2" {
  filename = "${path.module}/item/car/chevrolet_corvette-sting-ray-sport-coupe-c2.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-sting-ray-sport-coupe-c2" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-sting-ray-sport-coupe-c2.content}"
}

# chevrolet_corvette-stingray-c7 item
data "local_file" "car_chevrolet_corvette-stingray-c7" {
  filename = "${path.module}/item/car/chevrolet_corvette-stingray-c7.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-stingray-c7" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-stingray-c7.content}"
}

# chevrolet_corvette-stingray-convertible-c3 item
data "local_file" "car_chevrolet_corvette-stingray-convertible-c3" {
  filename = "${path.module}/item/car/chevrolet_corvette-stingray-convertible-c3.json"
}

resource "aws_dynamodb_table_item" "car_chevrolet_corvette-stingray-convertible-c3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_chevrolet_corvette-stingray-convertible-c3.content}"
}

# citroen_ds3-racing item
data "local_file" "car_citroen_ds3-racing" {
  filename = "${path.module}/item/car/citroen_ds3-racing.json"
}

resource "aws_dynamodb_table_item" "car_citroen_ds3-racing" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_citroen_ds3-racing.content}"
}

# citroen_gt-by-citroen-gr4 item
data "local_file" "car_citroen_gt-by-citroen-gr4" {
  filename = "${path.module}/item/car/citroen_gt-by-citroen-gr4.json"
}

resource "aws_dynamodb_table_item" "car_citroen_gt-by-citroen-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_citroen_gt-by-citroen-gr4.content}"
}

# citroen_gt-by-citroen-race-car-gr3 item
data "local_file" "car_citroen_gt-by-citroen-race-car-gr3" {
  filename = "${path.module}/item/car/citroen_gt-by-citroen-race-car-gr3.json"
}

resource "aws_dynamodb_table_item" "car_citroen_gt-by-citroen-race-car-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_citroen_gt-by-citroen-race-car-gr3.content}"
}

# citroen_gt-by-citroen-road-car item
data "local_file" "car_citroen_gt-by-citroen-road-car" {
  filename = "${path.module}/item/car/citroen_gt-by-citroen-road-car.json"
}

resource "aws_dynamodb_table_item" "car_citroen_gt-by-citroen-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_citroen_gt-by-citroen-road-car.content}"
}

# daihatsu_copen-active-top item
data "local_file" "car_daihatsu_copen-active-top" {
  filename = "${path.module}/item/car/daihatsu_copen-active-top.json"
}

resource "aws_dynamodb_table_item" "car_daihatsu_copen-active-top" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_daihatsu_copen-active-top.content}"
}

# daihatsu_copen-rj-vision-gran-turismo item
data "local_file" "car_daihatsu_copen-rj-vision-gran-turismo" {
  filename = "${path.module}/item/car/daihatsu_copen-rj-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_daihatsu_copen-rj-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_daihatsu_copen-rj-vision-gran-turismo.content}"
}

# dallara_sf19-super-formula-honda item
data "local_file" "car_dallara_sf19-super-formula-honda" {
  filename = "${path.module}/item/car/dallara_sf19-super-formula-honda.json"
}

resource "aws_dynamodb_table_item" "car_dallara_sf19-super-formula-honda" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dallara_sf19-super-formula-honda.content}"
}

# dallara_sf19-super-formula-toyota item
data "local_file" "car_dallara_sf19-super-formula-toyota" {
  filename = "${path.module}/item/car/dallara_sf19-super-formula-toyota.json"
}

resource "aws_dynamodb_table_item" "car_dallara_sf19-super-formula-toyota" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dallara_sf19-super-formula-toyota.content}"
}

# de-tomaso_pantera item
data "local_file" "car_de-tomaso_pantera" {
  filename = "${path.module}/item/car/de-tomaso_pantera.json"
}

resource "aws_dynamodb_table_item" "car_de-tomaso_pantera" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_de-tomaso_pantera.content}"
}

# dodge_challenger-rt item
data "local_file" "car_dodge_challenger-rt" {
  filename = "${path.module}/item/car/dodge_challenger-rt.json"
}

resource "aws_dynamodb_table_item" "car_dodge_challenger-rt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_challenger-rt.content}"
}

# dodge_charger_srt_hellcat item
data "local_file" "car_dodge_charger_srt_hellcat" {
  filename = "${path.module}/item/car/dodge_charger_srt_hellcat.json"
}

resource "aws_dynamodb_table_item" "car_dodge_charger_srt_hellcat" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_charger_srt_hellcat.content}"
}

# dodge_srt-tomahawk-gts-r-vision-gran-turismo item
data "local_file" "car_dodge_srt-tomahawk-gts-r-vision-gran-turismo" {
  filename = "${path.module}/item/car/dodge_srt-tomahawk-gts-r-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_dodge_srt-tomahawk-gts-r-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_srt-tomahawk-gts-r-vision-gran-turismo.content}"
}

# dodge_srt-tomahawk-s-vision-gran-turismo item
data "local_file" "car_dodge_srt-tomahawk-s-vision-gran-turismo" {
  filename = "${path.module}/item/car/dodge_srt-tomahawk-s-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_dodge_srt-tomahawk-s-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_srt-tomahawk-s-vision-gran-turismo.content}"
}

# dodge_srt-tomahawk-vision-gran-turismo-gr1 item
data "local_file" "car_dodge_srt-tomahawk-vision-gran-turismo-gr1" {
  filename = "${path.module}/item/car/dodge_srt-tomahawk-vision-gran-turismo-gr1.json"
}

resource "aws_dynamodb_table_item" "car_dodge_srt-tomahawk-vision-gran-turismo-gr1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_srt-tomahawk-vision-gran-turismo-gr1.content}"
}

# dodge_srt-tomahawk-x-vision-gran-turismo item
data "local_file" "car_dodge_srt-tomahawk-x-vision-gran-turismo" {
  filename = "${path.module}/item/car/dodge_srt-tomahawk-x-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_dodge_srt-tomahawk-x-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_srt-tomahawk-x-vision-gran-turismo.content}"
}

# dodge_viper-gr4 item
data "local_file" "car_dodge_viper-gr4" {
  filename = "${path.module}/item/car/dodge_viper-gr4.json"
}

resource "aws_dynamodb_table_item" "car_dodge_viper-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_viper-gr4.content}"
}

# dodge_viper-gts-2002 item
data "local_file" "car_dodge_viper-gts-2002" {
  filename = "${path.module}/item/car/dodge_viper-gts-2002.json"
}

resource "aws_dynamodb_table_item" "car_dodge_viper-gts-2002" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_viper-gts-2002.content}"
}

# dodge_viper-gts-2013 item
data "local_file" "car_dodge_viper-gts-2013" {
  filename = "${path.module}/item/car/dodge_viper-gts-2013.json"
}

resource "aws_dynamodb_table_item" "car_dodge_viper-gts-2013" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_viper-gts-2013.content}"
}

# dodge_viper-srt-gt3-r item
data "local_file" "car_dodge_viper-srt-gt3-r" {
  filename = "${path.module}/item/car/dodge_viper-srt-gt3-r.json"
}

resource "aws_dynamodb_table_item" "car_dodge_viper-srt-gt3-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_viper-srt-gt3-r.content}"
}

# dodge_viper-srt10-coupe item
data "local_file" "car_dodge_viper-srt10-coupe" {
  filename = "${path.module}/item/car/dodge_viper-srt10-coupe.json"
}

resource "aws_dynamodb_table_item" "car_dodge_viper-srt10-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_dodge_viper-srt10-coupe.content}"
}

# ferrari_250-gt-berlinetta-passo-corto-cn2521 item
data "local_file" "car_ferrari_250-gt-berlinetta-passo-corto-cn2521" {
  filename = "${path.module}/item/car/ferrari_250-gt-berlinetta-passo-corto-cn2521.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_250-gt-berlinetta-passo-corto-cn2521" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_250-gt-berlinetta-passo-corto-cn2521.content}"
}

# ferrari_250-gto-cn3729gt item
data "local_file" "car_ferrari_250-gto-cn3729gt" {
  filename = "${path.module}/item/car/ferrari_250-gto-cn3729gt.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_250-gto-cn3729gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_250-gto-cn3729gt.content}"
}

# ferrari_330-p4 item
data "local_file" "car_ferrari_330-p4" {
  filename = "${path.module}/item/car/ferrari_330-p4.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_330-p4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_330-p4.content}"
}

# ferrari_458-italia-gr4 item
data "local_file" "car_ferrari_458-italia-gr4" {
  filename = "${path.module}/item/car/ferrari_458-italia-gr4.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_458-italia-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_458-italia-gr4.content}"
}

# ferrari_458-italia-gt3 item
data "local_file" "car_ferrari_458-italia-gt3" {
  filename = "${path.module}/item/car/ferrari_458-italia-gt3.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_458-italia-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_458-italia-gt3.content}"
}

# ferrari_458-italia item
data "local_file" "car_ferrari_458-italia" {
  filename = "${path.module}/item/car/ferrari_458-italia.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_458-italia" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_458-italia.content}"
}

# ferrari_512bb item
data "local_file" "car_ferrari_512bb" {
  filename = "${path.module}/item/car/ferrari_512bb.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_512bb" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_512bb.content}"
}

# ferrari_dino-246-gt item
data "local_file" "car_ferrari_dino-246-gt" {
  filename = "${path.module}/item/car/ferrari_dino-246-gt.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_dino-246-gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_dino-246-gt.content}"
}

# ferrari_enzo-ferrari item
data "local_file" "car_ferrari_enzo-ferrari" {
  filename = "${path.module}/item/car/ferrari_enzo-ferrari.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_enzo-ferrari" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_enzo-ferrari.content}"
}

# ferrari_f40 item
data "local_file" "car_ferrari_f40" {
  filename = "${path.module}/item/car/ferrari_f40.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_f40" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_f40.content}"
}

# ferrari_f50 item
data "local_file" "car_ferrari_f50" {
  filename = "${path.module}/item/car/ferrari_f50.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_f50" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_f50.content}"
}

# ferrari_gto item
data "local_file" "car_ferrari_gto" {
  filename = "${path.module}/item/car/ferrari_gto.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_gto" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_gto.content}"
}

# ferrari_laferrari item
data "local_file" "car_ferrari_laferrari" {
  filename = "${path.module}/item/car/ferrari_laferrari.json"
}

resource "aws_dynamodb_table_item" "car_ferrari_laferrari" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ferrari_laferrari.content}"
}

# fiat_500f item
data "local_file" "car_fiat_500f" {
  filename = "${path.module}/item/car/fiat_500f.json"
}

resource "aws_dynamodb_table_item" "car_fiat_500f" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_fiat_500f.content}"
}

# fittipaldi-motors_ef7-vision-gran-turismo-by-pininfarina item
data "local_file" "car_fittipaldi-motors_ef7-vision-gran-turismo-by-pininfarina" {
  filename = "${path.module}/item/car/fittipaldi-motors_ef7-vision-gran-turismo-by-pininfarina.json"
}

resource "aws_dynamodb_table_item" "car_fittipaldi-motors_ef7-vision-gran-turismo-by-pininfarina" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_fittipaldi-motors_ef7-vision-gran-turismo-by-pininfarina.content}"
}

# ford_f-150-svt-raptor item
data "local_file" "car_ford_f-150-svt-raptor" {
  filename = "${path.module}/item/car/ford_f-150-svt-raptor.json"
}

resource "aws_dynamodb_table_item" "car_ford_f-150-svt-raptor" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_f-150-svt-raptor.content}"
}

# ford_focus-grb-rally-car item
data "local_file" "car_ford_focus-grb-rally-car" {
  filename = "${path.module}/item/car/ford_focus-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_ford_focus-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_focus-grb-rally-car.content}"
}

# ford_focus-st item
data "local_file" "car_ford_focus-st" {
  filename = "${path.module}/item/car/ford_focus-st.json"
}

resource "aws_dynamodb_table_item" "car_ford_focus-st" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_focus-st.content}"
}

# ford_gt-lm-spec-ii-test-car item
data "local_file" "car_ford_gt-lm-spec-ii-test-car" {
  filename = "${path.module}/item/car/ford_gt-lm-spec-ii-test-car.json"
}

resource "aws_dynamodb_table_item" "car_ford_gt-lm-spec-ii-test-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_gt-lm-spec-ii-test-car.content}"
}

# ford_gt item
data "local_file" "car_ford_gt" {
  filename = "${path.module}/item/car/ford_gt.json"
}

resource "aws_dynamodb_table_item" "car_ford_gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_gt.content}"
}

# ford_gt40-mark-i item
data "local_file" "car_ford_gt40-mark-i" {
  filename = "${path.module}/item/car/ford_gt40-mark-i.json"
}

resource "aws_dynamodb_table_item" "car_ford_gt40-mark-i" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_gt40-mark-i.content}"
}

# ford_mark-iv-race-car item
data "local_file" "car_ford_mark-iv-race-car" {
  filename = "${path.module}/item/car/ford_mark-iv-race-car.json"
}

resource "aws_dynamodb_table_item" "car_ford_mark-iv-race-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mark-iv-race-car.content}"
}

# ford_mustang-gr3-road-car item
data "local_file" "car_ford_mustang-gr3-road-car" {
  filename = "${path.module}/item/car/ford_mustang-gr3-road-car.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-gr3-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-gr3-road-car.content}"
}

# ford_mustang-gr3 item
data "local_file" "car_ford_mustang-gr3" {
  filename = "${path.module}/item/car/ford_mustang-gr3.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-gr3.content}"
}

# ford_mustang-gr4 item
data "local_file" "car_ford_mustang-gr4" {
  filename = "${path.module}/item/car/ford_mustang-gr4.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-gr4.content}"
}

# ford_mustang-grb-rally-car item
data "local_file" "car_ford_mustang-grb-rally-car" {
  filename = "${path.module}/item/car/ford_mustang-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-grb-rally-car.content}"
}

# ford_mustang-gt-premium-fastback item
data "local_file" "car_ford_mustang-gt-premium-fastback" {
  filename = "${path.module}/item/car/ford_mustang-gt-premium-fastback.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-gt-premium-fastback" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-gt-premium-fastback.content}"
}

# ford_mustang-mach-1 item
data "local_file" "car_ford_mustang-mach-1" {
  filename = "${path.module}/item/car/ford_mustang-mach-1.json"
}

resource "aws_dynamodb_table_item" "car_ford_mustang-mach-1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ford_mustang-mach-1.content}"
}

# gran-turismo_f1550t-a item
data "local_file" "car_gran-turismo_f1550t-a" {
  filename = "${path.module}/item/car/gran-turismo_f1550t-a.json"
}

resource "aws_dynamodb_table_item" "car_gran-turismo_f1550t-a" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gran-turismo_f1550t-a.content}"
}

# gran-turismo_racing-kart-125-shifter item
data "local_file" "car_gran-turismo_racing-kart-125-shifter" {
  filename = "${path.module}/item/car/gran-turismo_racing-kart-125-shifter.json"
}

resource "aws_dynamodb_table_item" "car_gran-turismo_racing-kart-125-shifter" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gran-turismo_racing-kart-125-shifter.content}"
}

# gran-turismo_red-bull-x2014-junior item
data "local_file" "car_gran-turismo_red-bull-x2014-junior" {
  filename = "${path.module}/item/car/gran-turismo_red-bull-x2014-junior.json"
}

resource "aws_dynamodb_table_item" "car_gran-turismo_red-bull-x2014-junior" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gran-turismo_red-bull-x2014-junior.content}"
}

# gran-turismo_red-bull-x2014-standard item
data "local_file" "car_gran-turismo_red-bull-x2014-standard" {
  filename = "${path.module}/item/car/gran-turismo_red-bull-x2014-standard.json"
}

resource "aws_dynamodb_table_item" "car_gran-turismo_red-bull-x2014-standard" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gran-turismo_red-bull-x2014-standard.content}"
}

# greddy_fugu-z item
data "local_file" "car_greddy_fugu-z" {
  filename = "${path.module}/item/car/greddy_fugu-z.json"
}

resource "aws_dynamodb_table_item" "car_greddy_fugu-z" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_greddy_fugu-z.content}"
}

# gt-awards-sema_chris-holstrom-concepts item
data "local_file" "car_gt-awards-sema_chris-holstrom-concepts" {
  filename = "${path.module}/item/car/gt-awards-sema_chris-holstrom-concepts.json"
}

resource "aws_dynamodb_table_item" "car_gt-awards-sema_chris-holstrom-concepts" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gt-awards-sema_chris-holstrom-concepts.content}"
}

# gt-awards-sema_mach-forty item
data "local_file" "car_gt-awards-sema_mach-forty" {
  filename = "${path.module}/item/car/gt-awards-sema_mach-forty.json"
}

resource "aws_dynamodb_table_item" "car_gt-awards-sema_mach-forty" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_gt-awards-sema_mach-forty.content}"
}

# honda_beat item
data "local_file" "car_honda_beat" {
  filename = "${path.module}/item/car/honda_beat.json"
}

resource "aws_dynamodb_table_item" "car_honda_beat" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_beat.content}"
}

# honda_civic-type-r-fk2 item
data "local_file" "car_honda_civic-type-r-fk2" {
  filename = "${path.module}/item/car/honda_civic-type-r-fk2.json"
}

resource "aws_dynamodb_table_item" "car_honda_civic-type-r-fk2" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_civic-type-r-fk2.content}"
}

# honda_epson-nsx item
data "local_file" "car_honda_epson-nsx" {
  filename = "${path.module}/item/car/honda_epson-nsx.json"
}

resource "aws_dynamodb_table_item" "car_honda_epson-nsx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_epson-nsx.content}"
}

# honda_fit-hybrid item
data "local_file" "car_honda_fit-hybrid" {
  filename = "${path.module}/item/car/honda_fit-hybrid.json"
}

resource "aws_dynamodb_table_item" "car_honda_fit-hybrid" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_fit-hybrid.content}"
}

# honda_integra-type-r-dc2 item
data "local_file" "car_honda_integra-type-r-dc2" {
  filename = "${path.module}/item/car/honda_integra-type-r-dc2.json"
}

resource "aws_dynamodb_table_item" "car_honda_integra-type-r-dc2" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_integra-type-r-dc2.content}"
}

# honda_nsx-gr3 item
data "local_file" "car_honda_nsx-gr3" {
  filename = "${path.module}/item/car/honda_nsx-gr3.json"
}

resource "aws_dynamodb_table_item" "car_honda_nsx-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_nsx-gr3.content}"
}

# honda_nsx-gr4 item
data "local_file" "car_honda_nsx-gr4" {
  filename = "${path.module}/item/car/honda_nsx-gr4.json"
}

resource "aws_dynamodb_table_item" "car_honda_nsx-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_nsx-gr4.content}"
}

# honda_nsx-grb-rally-car item
data "local_file" "car_honda_nsx-grb-rally-car" {
  filename = "${path.module}/item/car/honda_nsx-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_honda_nsx-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_nsx-grb-rally-car.content}"
}

# honda_nsx-type-r item
data "local_file" "car_honda_nsx-type-r" {
  filename = "${path.module}/item/car/honda_nsx-type-r.json"
}

resource "aws_dynamodb_table_item" "car_honda_nsx-type-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_nsx-type-r.content}"
}

# honda_nsx item
data "local_file" "car_honda_nsx" {
  filename = "${path.module}/item/car/honda_nsx.json"
}

resource "aws_dynamodb_table_item" "car_honda_nsx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_nsx.content}"
}

# honda_project-2-4-powered-by-rc213cv item
data "local_file" "car_honda_project-2-4-powered-by-rc213cv" {
  filename = "${path.module}/item/car/honda_project-2-4-powered-by-rc213cv.json"
}

resource "aws_dynamodb_table_item" "car_honda_project-2-4-powered-by-rc213cv" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_project-2-4-powered-by-rc213cv.content}"
}

# honda_raybrig-nsx-concept-gt item
data "local_file" "car_honda_raybrig-nsx-concept-gt" {
  filename = "${path.module}/item/car/honda_raybrig-nsx-concept-gt.json"
}

resource "aws_dynamodb_table_item" "car_honda_raybrig-nsx-concept-gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_raybrig-nsx-concept-gt.content}"
}

# honda_s660 item
data "local_file" "car_honda_s660" {
  filename = "${path.module}/item/car/honda_s660.json"
}

resource "aws_dynamodb_table_item" "car_honda_s660" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_s660.content}"
}

# honda_sports-vision-gran-turismo item
data "local_file" "car_honda_sports-vision-gran-turismo" {
  filename = "${path.module}/item/car/honda_sports-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_honda_sports-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_honda_sports-vision-gran-turismo.content}"
}

# hyundai_genesis-coupe-3-8-track item
data "local_file" "car_hyundai_genesis-coupe-3-8-track" {
  filename = "${path.module}/item/car/hyundai_genesis-coupe-3-8-track.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_genesis-coupe-3-8-track" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_genesis-coupe-3-8-track.content}"
}

# hyundai_genesis-gr3 item
data "local_file" "car_hyundai_genesis-gr3" {
  filename = "${path.module}/item/car/hyundai_genesis-gr3.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_genesis-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_genesis-gr3.content}"
}

# hyundai_genesis-gr4 item
data "local_file" "car_hyundai_genesis-gr4" {
  filename = "${path.module}/item/car/hyundai_genesis-gr4.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_genesis-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_genesis-gr4.content}"
}

# hyundai_genesis-grb-rally-car item
data "local_file" "car_hyundai_genesis-grb-rally-car" {
  filename = "${path.module}/item/car/hyundai_genesis-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_genesis-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_genesis-grb-rally-car.content}"
}

# hyundai_n-2025-vision-gran-turismo-gr1 item
data "local_file" "car_hyundai_n-2025-vision-gran-turismo-gr1" {
  filename = "${path.module}/item/car/hyundai_n-2025-vision-gran-turismo-gr1.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_n-2025-vision-gran-turismo-gr1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_n-2025-vision-gran-turismo-gr1.content}"
}

# hyundai_n-2025-vision-gran-turismo-grx item
data "local_file" "car_hyundai_n-2025-vision-gran-turismo-grx" {
  filename = "${path.module}/item/car/hyundai_n-2025-vision-gran-turismo-grx.json"
}

resource "aws_dynamodb_table_item" "car_hyundai_n-2025-vision-gran-turismo-grx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_hyundai_n-2025-vision-gran-turismo-grx.content}"
}

# infiniti_concept-vision-gran-turismo item
data "local_file" "car_infiniti_concept-vision-gran-turismo" {
  filename = "${path.module}/item/car/infiniti_concept-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_infiniti_concept-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_infiniti_concept-vision-gran-turismo.content}"
}

# jaguar_e-type-coupe item
data "local_file" "car_jaguar_e-type-coupe" {
  filename = "${path.module}/item/car/jaguar_e-type-coupe.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_e-type-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_e-type-coupe.content}"
}

# jaguar_f-type-gr3 item
data "local_file" "car_jaguar_f-type-gr3" {
  filename = "${path.module}/item/car/jaguar_f-type-gr3.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_f-type-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_f-type-gr3.content}"
}

# jaguar_f-type-gr4 item
data "local_file" "car_jaguar_f-type-gr4" {
  filename = "${path.module}/item/car/jaguar_f-type-gr4.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_f-type-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_f-type-gr4.content}"
}

# jaguar_f-type-r-coupe item
data "local_file" "car_jaguar_f-type-r-coupe" {
  filename = "${path.module}/item/car/jaguar_f-type-r-coupe.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_f-type-r-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_f-type-r-coupe.content}"
}

# jaguar_xj13 item
data "local_file" "car_jaguar_xj13" {
  filename = "${path.module}/item/car/jaguar_xj13.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_xj13" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_xj13.content}"
}

# jaguar_xjr-9 item
data "local_file" "car_jaguar_xjr-9" {
  filename = "${path.module}/item/car/jaguar_xjr-9.json"
}

resource "aws_dynamodb_table_item" "car_jaguar_xjr-9" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_jaguar_xjr-9.content}"
}

# ktm_x-bow-r item
data "local_file" "car_ktm_x-bow-r" {
  filename = "${path.module}/item/car/ktm_x-bow-r.json"
}

resource "aws_dynamodb_table_item" "car_ktm_x-bow-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_ktm_x-bow-r.content}"
}

# lamborghini_aventador-lp-700-4 item
data "local_file" "car_lamborghini_aventador-lp-700-4" {
  filename = "${path.module}/item/car/lamborghini_aventador-lp-700-4.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_aventador-lp-700-4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_aventador-lp-700-4.content}"
}

# lamborghini_countach-25th-anniversary item
data "local_file" "car_lamborghini_countach-25th-anniversary" {
  filename = "${path.module}/item/car/lamborghini_countach-25th-anniversary.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_countach-25th-anniversary" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_countach-25th-anniversary.content}"
}

# lamborghini_countach-lp400 item
data "local_file" "car_lamborghini_countach-lp400" {
  filename = "${path.module}/item/car/lamborghini_countach-lp400.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_countach-lp400" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_countach-lp400.content}"
}

# lamborghini_diablo-gt item
data "local_file" "car_lamborghini_diablo-gt" {
  filename = "${path.module}/item/car/lamborghini_diablo-gt.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_diablo-gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_diablo-gt.content}"
}

# lamborghini_huracan-gr4 item
data "local_file" "car_lamborghini_huracan-gr4" {
  filename = "${path.module}/item/car/lamborghini_huracan-gr4.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_huracan-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_huracan-gr4.content}"
}

# lamborghini_huracan-gt3-2015 item
data "local_file" "car_lamborghini_huracan-gt3-2015" {
  filename = "${path.module}/item/car/lamborghini_huracan-gt3-2015.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_huracan-gt3-2015" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_huracan-gt3-2015.content}"
}

# lamborghini_huracan-lp-610-4 item
data "local_file" "car_lamborghini_huracan-lp-610-4" {
  filename = "${path.module}/item/car/lamborghini_huracan-lp-610-4.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_huracan-lp-610-4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_huracan-lp-610-4.content}"
}

# lamborghini_miura-p400-bertone-prototype-cn-0706 item
data "local_file" "car_lamborghini_miura-p400-bertone-prototype-cn-0706" {
  filename = "${path.module}/item/car/lamborghini_miura-p400-bertone-prototype-cn-0706.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_miura-p400-bertone-prototype-cn-0706" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_miura-p400-bertone-prototype-cn-0706.content}"
}

# lamborghini_veneno item
data "local_file" "car_lamborghini_veneno" {
  filename = "${path.module}/item/car/lamborghini_veneno.json"
}

resource "aws_dynamodb_table_item" "car_lamborghini_veneno" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lamborghini_veneno.content}"
}

# lancia_delta-hf-inegrale-evoluzione item
data "local_file" "car_lancia_delta-hf-inegrale-evoluzione" {
  filename = "${path.module}/item/car/lancia_delta-hf-inegrale-evoluzione.json"
}

resource "aws_dynamodb_table_item" "car_lancia_delta-hf-inegrale-evoluzione" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lancia_delta-hf-inegrale-evoluzione.content}"
}

# lancia_stratos item
data "local_file" "car_lancia_stratos" {
  filename = "${path.module}/item/car/lancia_stratos.json"
}

resource "aws_dynamodb_table_item" "car_lancia_stratos" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lancia_stratos.content}"
}

# lexus_au-toms-rc-f item
data "local_file" "car_lexus_au-toms-rc-f" {
  filename = "${path.module}/item/car/lexus_au-toms-rc-f.json"
}

resource "aws_dynamodb_table_item" "car_lexus_au-toms-rc-f" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_au-toms-rc-f.content}"
}

# lexus_lc500 item
data "local_file" "car_lexus_lc500" {
  filename = "${path.module}/item/car/lexus_lc500.json"
}

resource "aws_dynamodb_table_item" "car_lexus_lc500" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_lc500.content}"
}

# lexus_lf-lc-gt-vision-gran-turismo item
data "local_file" "car_lexus_lf-lc-gt-vision-gran-turismo" {
  filename = "${path.module}/item/car/lexus_lf-lc-gt-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_lexus_lf-lc-gt-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_lf-lc-gt-vision-gran-turismo.content}"
}

# lexus_petronas-toms-sc430 item
data "local_file" "car_lexus_petronas-toms-sc430" {
  filename = "${path.module}/item/car/lexus_petronas-toms-sc430.json"
}

resource "aws_dynamodb_table_item" "car_lexus_petronas-toms-sc430" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_petronas-toms-sc430.content}"
}

# lexus_rc-f-gr4 item
data "local_file" "car_lexus_rc-f-gr4" {
  filename = "${path.module}/item/car/lexus_rc-f-gr4.json"
}

resource "aws_dynamodb_table_item" "car_lexus_rc-f-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_rc-f-gr4.content}"
}

# lexus_rc-f-gt3-emil-frey-racing item
data "local_file" "car_lexus_rc-f-gt3-emil-frey-racing" {
  filename = "${path.module}/item/car/lexus_rc-f-gt3-emil-frey-racing.json"
}

resource "aws_dynamodb_table_item" "car_lexus_rc-f-gt3-emil-frey-racing" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_rc-f-gt3-emil-frey-racing.content}"
}

# lexus_rc-f-gt3-prototype-emil-frey-racing item
data "local_file" "car_lexus_rc-f-gt3-prototype-emil-frey-racing" {
  filename = "${path.module}/item/car/lexus_rc-f-gt3-prototype-emil-frey-racing.json"
}

resource "aws_dynamodb_table_item" "car_lexus_rc-f-gt3-prototype-emil-frey-racing" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_rc-f-gt3-prototype-emil-frey-racing.content}"
}

# lexus_rc-f item
data "local_file" "car_lexus_rc-f" {
  filename = "${path.module}/item/car/lexus_rc-f.json"
}

resource "aws_dynamodb_table_item" "car_lexus_rc-f" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_lexus_rc-f.content}"
}

# maseratti_granturismo-s item
data "local_file" "car_maseratti_granturismo-s" {
  filename = "${path.module}/item/car/maseratti_granturismo-s.json"
}

resource "aws_dynamodb_table_item" "car_maseratti_granturismo-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_maseratti_granturismo-s.content}"
}

# mazda_787b item
data "local_file" "car_mazda_787b" {
  filename = "${path.module}/item/car/mazda_787b.json"
}

resource "aws_dynamodb_table_item" "car_mazda_787b" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_787b.content}"
}

# mazda_atenza-gr3-road-car item
data "local_file" "car_mazda_atenza-gr3-road-car" {
  filename = "${path.module}/item/car/mazda_atenza-gr3-road-car.json"
}

resource "aws_dynamodb_table_item" "car_mazda_atenza-gr3-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_atenza-gr3-road-car.content}"
}

# mazda_atenza-gr3 item
data "local_file" "car_mazda_atenza-gr3" {
  filename = "${path.module}/item/car/mazda_atenza-gr3.json"
}

resource "aws_dynamodb_table_item" "car_mazda_atenza-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_atenza-gr3.content}"
}

# mazda_atenza-gr4 item
data "local_file" "car_mazda_atenza-gr4" {
  filename = "${path.module}/item/car/mazda_atenza-gr4.json"
}

resource "aws_dynamodb_table_item" "car_mazda_atenza-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_atenza-gr4.content}"
}

# mazda_atenza-sedan-xd-l-package item
data "local_file" "car_mazda_atenza-sedan-xd-l-package" {
  filename = "${path.module}/item/car/mazda_atenza-sedan-xd-l-package.json"
}

resource "aws_dynamodb_table_item" "car_mazda_atenza-sedan-xd-l-package" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_atenza-sedan-xd-l-package.content}"
}

# mazda_eunos-roadster-na-special-package item
data "local_file" "car_mazda_eunos-roadster-na-special-package" {
  filename = "${path.module}/item/car/mazda_eunos-roadster-na-special-package.json"
}

resource "aws_dynamodb_table_item" "car_mazda_eunos-roadster-na-special-package" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_eunos-roadster-na-special-package.content}"
}

# mazda_lm55-vision-gran-turismo-gr1 item
data "local_file" "car_mazda_lm55-vision-gran-turismo-gr1" {
  filename = "${path.module}/item/car/mazda_lm55-vision-gran-turismo-gr1.json"
}

resource "aws_dynamodb_table_item" "car_mazda_lm55-vision-gran-turismo-gr1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_lm55-vision-gran-turismo-gr1.content}"
}

# mazda_lm55-vision-gran-turismo-grx item
data "local_file" "car_mazda_lm55-vision-gran-turismo-grx" {
  filename = "${path.module}/item/car/mazda_lm55-vision-gran-turismo-grx.json"
}

resource "aws_dynamodb_table_item" "car_mazda_lm55-vision-gran-turismo-grx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_lm55-vision-gran-turismo-grx.content}"
}

# mazda_roadster-s-nd item
data "local_file" "car_mazda_roadster-s-nd" {
  filename = "${path.module}/item/car/mazda_roadster-s-nd.json"
}

resource "aws_dynamodb_table_item" "car_mazda_roadster-s-nd" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_roadster-s-nd.content}"
}

# mazda_rx-7-gt-x-fc item
data "local_file" "car_mazda_rx-7-gt-x-fc" {
  filename = "${path.module}/item/car/mazda_rx-7-gt-x-fc.json"
}

resource "aws_dynamodb_table_item" "car_mazda_rx-7-gt-x-fc" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_rx-7-gt-x-fc.content}"
}

# mazda_rx-7-spirit-r-type-a-fd item
data "local_file" "car_mazda_rx-7-spirit-r-type-a-fd" {
  filename = "${path.module}/item/car/mazda_rx-7-spirit-r-type-a-fd.json"
}

resource "aws_dynamodb_table_item" "car_mazda_rx-7-spirit-r-type-a-fd" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_rx-7-spirit-r-type-a-fd.content}"
}

# mazda_rx500 item
data "local_file" "car_mazda_rx500" {
  filename = "${path.module}/item/car/mazda_rx500.json"
}

resource "aws_dynamodb_table_item" "car_mazda_rx500" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mazda_rx500.content}"
}

# mclaren_650s-coupe item
data "local_file" "car_mclaren_650s-coupe" {
  filename = "${path.module}/item/car/mclaren_650s-coupe.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_650s-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_650s-coupe.content}"
}

# mclaren_650s-gr4 item
data "local_file" "car_mclaren_650s-gr4" {
  filename = "${path.module}/item/car/mclaren_650s-gr4.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_650s-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_650s-gr4.content}"
}

# mclaren_650s-gt3 item
data "local_file" "car_mclaren_650s-gt3" {
  filename = "${path.module}/item/car/mclaren_650s-gt3.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_650s-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_650s-gt3.content}"
}

# mclaren_f1-gtr-bmw-kokusai-kaihatsu-uk-racing item
data "local_file" "car_mclaren_f1-gtr-bmw-kokusai-kaihatsu-uk-racing" {
  filename = "${path.module}/item/car/mclaren_f1-gtr-bmw-kokusai-kaihatsu-uk-racing.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_f1-gtr-bmw-kokusai-kaihatsu-uk-racing" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_f1-gtr-bmw-kokusai-kaihatsu-uk-racing.content}"
}

# mclaren_f1 item
data "local_file" "car_mclaren_f1" {
  filename = "${path.module}/item/car/mclaren_f1.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_f1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_f1.content}"
}

# mclaren_mp4-12c item
data "local_file" "car_mclaren_mp4-12c" {
  filename = "${path.module}/item/car/mclaren_mp4-12c.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_mp4-12c" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_mp4-12c.content}"
}

# mclaren_p1-gtr item
data "local_file" "car_mclaren_p1-gtr" {
  filename = "${path.module}/item/car/mclaren_p1-gtr.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_p1-gtr" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_p1-gtr.content}"
}

# mclaren_ultimate-vision-gran-turismo-gr1 item
data "local_file" "car_mclaren_ultimate-vision-gran-turismo-gr1" {
  filename = "${path.module}/item/car/mclaren_ultimate-vision-gran-turismo-gr1.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_ultimate-vision-gran-turismo-gr1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_ultimate-vision-gran-turismo-gr1.content}"
}

# mclaren_ultimate-vision-gran-turismo-grx item
data "local_file" "car_mclaren_ultimate-vision-gran-turismo-grx" {
  filename = "${path.module}/item/car/mclaren_ultimate-vision-gran-turismo-grx.json"
}

resource "aws_dynamodb_table_item" "car_mclaren_ultimate-vision-gran-turismo-grx" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mclaren_ultimate-vision-gran-turismo-grx.content}"
}

# mercedes-benz_a-45-amg-4matic item
data "local_file" "car_mercedes-benz_a-45-amg-4matic" {
  filename = "${path.module}/item/car/mercedes-benz_a-45-amg-4matic.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_a-45-amg-4matic" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_a-45-amg-4matic.content}"
}

# mercedes-benz_amg-f1-w08-eq-power-color-variation item
data "local_file" "car_mercedes-benz_amg-f1-w08-eq-power-color-variation" {
  filename = "${path.module}/item/car/mercedes-benz_amg-f1-w08-eq-power-color-variation.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-f1-w08-eq-power-color-variation" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-f1-w08-eq-power-color-variation.content}"
}

# mercedes-benz_amg-f1-w08-eq-power item
data "local_file" "car_mercedes-benz_amg-f1-w08-eq-power" {
  filename = "${path.module}/item/car/mercedes-benz_amg-f1-w08-eq-power.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-f1-w08-eq-power" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-f1-w08-eq-power.content}"
}

# mercedes-benz_amg-gt-s item
data "local_file" "car_mercedes-benz_amg-gt-s" {
  filename = "${path.module}/item/car/mercedes-benz_amg-gt-s.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-gt-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-gt-s.content}"
}

# mercedes-benz_amg-gt-safety-car item
data "local_file" "car_mercedes-benz_amg-gt-safety-car" {
  filename = "${path.module}/item/car/mercedes-benz_amg-gt-safety-car.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-gt-safety-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-gt-safety-car.content}"
}

# mercedes-benz_amg-gt3-amg-team-htp-motorsport item
data "local_file" "car_mercedes-benz_amg-gt3-amg-team-htp-motorsport" {
  filename = "${path.module}/item/car/mercedes-benz_amg-gt3-amg-team-htp-motorsport.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-gt3-amg-team-htp-motorsport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-gt3-amg-team-htp-motorsport.content}"
}

# mercedes-benz_amg-vision-gran-turismo-racing-series item
data "local_file" "car_mercedes-benz_amg-vision-gran-turismo-racing-series" {
  filename = "${path.module}/item/car/mercedes-benz_amg-vision-gran-turismo-racing-series.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-vision-gran-turismo-racing-series" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-vision-gran-turismo-racing-series.content}"
}

# mercedes-benz_amg-vision-gran-turismo item
data "local_file" "car_mercedes-benz_amg-vision-gran-turismo" {
  filename = "${path.module}/item/car/mercedes-benz_amg-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_amg-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_amg-vision-gran-turismo.content}"
}

# mercedes-benz_sauber-mercedes-c9 item
data "local_file" "car_mercedes-benz_sauber-mercedes-c9" {
  filename = "${path.module}/item/car/mercedes-benz_sauber-mercedes-c9.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_sauber-mercedes-c9" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_sauber-mercedes-c9.content}"
}

# mercedes-benz_slr-mclaren item
data "local_file" "car_mercedes-benz_slr-mclaren" {
  filename = "${path.module}/item/car/mercedes-benz_slr-mclaren.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_slr-mclaren" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_slr-mclaren.content}"
}

# mercedes-benz_sls-amg-gr4 item
data "local_file" "car_mercedes-benz_sls-amg-gr4" {
  filename = "${path.module}/item/car/mercedes-benz_sls-amg-gr4.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_sls-amg-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_sls-amg-gr4.content}"
}

# mercedes-benz_sls-amg-gt3 item
data "local_file" "car_mercedes-benz_sls-amg-gt3" {
  filename = "${path.module}/item/car/mercedes-benz_sls-amg-gt3.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_sls-amg-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_sls-amg-gt3.content}"
}

# mercedes-benz_sls-amg item
data "local_file" "car_mercedes-benz_sls-amg" {
  filename = "${path.module}/item/car/mercedes-benz_sls-amg.json"
}

resource "aws_dynamodb_table_item" "car_mercedes-benz_sls-amg" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mercedes-benz_sls-amg.content}"
}

# mini_clubman-vision-gran-turismo item
data "local_file" "car_mini_clubman-vision-gran-turismo" {
  filename = "${path.module}/item/car/mini_clubman-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_mini_clubman-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mini_clubman-vision-gran-turismo.content}"
}

# mini_cooper-s-1965 item
data "local_file" "car_mini_cooper-s-1965" {
  filename = "${path.module}/item/car/mini_cooper-s-1965.json"
}

resource "aws_dynamodb_table_item" "car_mini_cooper-s-1965" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mini_cooper-s-1965.content}"
}

# mini_cooper-s-2005 item
data "local_file" "car_mini_cooper-s-2005" {
  filename = "${path.module}/item/car/mini_cooper-s-2005.json"
}

resource "aws_dynamodb_table_item" "car_mini_cooper-s-2005" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mini_cooper-s-2005.content}"
}

# mitsubishi_lancer-evolution-final-edition-gr3 item
data "local_file" "car_mitsubishi_lancer-evolution-final-edition-gr3" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-final-edition-gr3.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-final-edition-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-final-edition-gr3.content}"
}

# mitsubishi_lancer-evolution-final-edition-gr4 item
data "local_file" "car_mitsubishi_lancer-evolution-final-edition-gr4" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-final-edition-gr4.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-final-edition-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-final-edition-gr4.content}"
}

# mitsubishi_lancer-evolution-final-edition-grb-rally-car item
data "local_file" "car_mitsubishi_lancer-evolution-final-edition-grb-rally-car" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-final-edition-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-final-edition-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-final-edition-grb-rally-car.content}"
}

# mitsubishi_lancer-evolution-final-edition-grb-road-car item
data "local_file" "car_mitsubishi_lancer-evolution-final-edition-grb-road-car" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-final-edition-grb-road-car.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-final-edition-grb-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-final-edition-grb-road-car.content}"
}

# mitsubishi_lancer-evolution-final-edition item
data "local_file" "car_mitsubishi_lancer-evolution-final-edition" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-final-edition.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-final-edition" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-final-edition.content}"
}

# mitsubishi_lancer-evolution-iv-gsr item
data "local_file" "car_mitsubishi_lancer-evolution-iv-gsr" {
  filename = "${path.module}/item/car/mitsubishi_lancer-evolution-iv-gsr.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_lancer-evolution-iv-gsr" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_lancer-evolution-iv-gsr.content}"
}

# mitsubishi_xr-phev-evolution-vision-gran-turismo item
data "local_file" "car_mitsubishi_xr-phev-evolution-vision-gran-turismo" {
  filename = "${path.module}/item/car/mitsubishi_xr-phev-evolution-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_mitsubishi_xr-phev-evolution-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_mitsubishi_xr-phev-evolution-vision-gran-turismo.content}"
}

# nissan_concept-2020-vision-gran-turismo item
data "local_file" "car_nissan_concept-2020-vision-gran-turismo" {
  filename = "${path.module}/item/car/nissan_concept-2020-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_nissan_concept-2020-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_concept-2020-vision-gran-turismo.content}"
}

# nissan_fairlady-z-300zx-twinturbo-2-seater-z32 item
data "local_file" "car_nissan_fairlady-z-300zx-twinturbo-2-seater-z32" {
  filename = "${path.module}/item/car/nissan_fairlady-z-300zx-twinturbo-2-seater-z32.json"
}

resource "aws_dynamodb_table_item" "car_nissan_fairlady-z-300zx-twinturbo-2-seater-z32" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_fairlady-z-300zx-twinturbo-2-seater-z32.content}"
}

# nissan_fairlady-z-version-s-z33 item
data "local_file" "car_nissan_fairlady-z-version-s-z33" {
  filename = "${path.module}/item/car/nissan_fairlady-z-version-s-z33.json"
}

resource "aws_dynamodb_table_item" "car_nissan_fairlady-z-version-s-z33" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_fairlady-z-version-s-z33.content}"
}

# nissan_gt-r-gr4 item
data "local_file" "car_nissan_gt-r-gr4" {
  filename = "${path.module}/item/car/nissan_gt-r-gr4.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-gr4.content}"
}

# nissan_gt-r-grb-rally-car item
data "local_file" "car_nissan_gt-r-grb-rally-car" {
  filename = "${path.module}/item/car/nissan_gt-r-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-grb-rally-car.content}"
}

# nissan_gt-r-lm-nismo item
data "local_file" "car_nissan_gt-r-lm-nismo" {
  filename = "${path.module}/item/car/nissan_gt-r-lm-nismo.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-lm-nismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-lm-nismo.content}"
}

# nissan_gt-r-nismo-gt3-n24-schulze-motorsport item
data "local_file" "car_nissan_gt-r-nismo-gt3-n24-schulze-motorsport" {
  filename = "${path.module}/item/car/nissan_gt-r-nismo-gt3-n24-schulze-motorsport.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-nismo-gt3-n24-schulze-motorsport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-nismo-gt3-n24-schulze-motorsport.content}"
}

# nissan_gt-r-nismo item
data "local_file" "car_nissan_gt-r-nismo" {
  filename = "${path.module}/item/car/nissan_gt-r-nismo.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-nismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-nismo.content}"
}

# nissan_gt-r-premium-edition item
data "local_file" "car_nissan_gt-r-premium-edition" {
  filename = "${path.module}/item/car/nissan_gt-r-premium-edition.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-premium-edition" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-premium-edition.content}"
}

# nissan_gt-r-safety-car item
data "local_file" "car_nissan_gt-r-safety-car" {
  filename = "${path.module}/item/car/nissan_gt-r-safety-car.json"
}

resource "aws_dynamodb_table_item" "car_nissan_gt-r-safety-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_gt-r-safety-car.content}"
}

# nissan_motul-autech-gt-r item
data "local_file" "car_nissan_motul-autech-gt-r" {
  filename = "${path.module}/item/car/nissan_motul-autech-gt-r.json"
}

resource "aws_dynamodb_table_item" "car_nissan_motul-autech-gt-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_motul-autech-gt-r.content}"
}

# nissan_r92cp item
data "local_file" "car_nissan_r92cp" {
  filename = "${path.module}/item/car/nissan_r92cp.json"
}

resource "aws_dynamodb_table_item" "car_nissan_r92cp" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_r92cp.content}"
}

# nissan_skyline-gt-r-v-spec-ii-nur-r34 item
data "local_file" "car_nissan_skyline-gt-r-v-spec-ii-nur-r34" {
  filename = "${path.module}/item/car/nissan_skyline-gt-r-v-spec-ii-nur-r34.json"
}

resource "aws_dynamodb_table_item" "car_nissan_skyline-gt-r-v-spec-ii-nur-r34" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_skyline-gt-r-v-spec-ii-nur-r34.content}"
}

# nissan_skyline-gt-r-v-spec-ii-r32 item
data "local_file" "car_nissan_skyline-gt-r-v-spec-ii-r32" {
  filename = "${path.module}/item/car/nissan_skyline-gt-r-v-spec-ii-r32.json"
}

resource "aws_dynamodb_table_item" "car_nissan_skyline-gt-r-v-spec-ii-r32" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_skyline-gt-r-v-spec-ii-r32.content}"
}

# nissan_skyline-gt-r-v-spec-r33 item
data "local_file" "car_nissan_skyline-gt-r-v-spec-r33" {
  filename = "${path.module}/item/car/nissan_skyline-gt-r-v-spec-r33.json"
}

resource "aws_dynamodb_table_item" "car_nissan_skyline-gt-r-v-spec-r33" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_skyline-gt-r-v-spec-r33.content}"
}

# nissan_xanavi-nismo-gt-r item
data "local_file" "car_nissan_xanavi-nismo-gt-r" {
  filename = "${path.module}/item/car/nissan_xanavi-nismo-gt-r.json"
}

resource "aws_dynamodb_table_item" "car_nissan_xanavi-nismo-gt-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_nissan_xanavi-nismo-gt-r.content}"
}

# pagani_huayra item
data "local_file" "car_pagani_huayra" {
  filename = "${path.module}/item/car/pagani_huayra.json"
}

resource "aws_dynamodb_table_item" "car_pagani_huayra" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_pagani_huayra.content}"
}

# pagani_zonda-r item
data "local_file" "car_pagani_zonda-r" {
  filename = "${path.module}/item/car/pagani_zonda-r.json"
}

resource "aws_dynamodb_table_item" "car_pagani_zonda-r" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_pagani_zonda-r.content}"
}

# peugeot_208-gti-by-peugeot-sport item
data "local_file" "car_peugeot_208-gti-by-peugeot-sport" {
  filename = "${path.module}/item/car/peugeot_208-gti-by-peugeot-sport.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_208-gti-by-peugeot-sport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_208-gti-by-peugeot-sport.content}"
}

# peugeot_908-hdi-fap-team-peugeot-total item
data "local_file" "car_peugeot_908-hdi-fap-team-peugeot-total" {
  filename = "${path.module}/item/car/peugeot_908-hdi-fap-team-peugeot-total.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_908-hdi-fap-team-peugeot-total" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_908-hdi-fap-team-peugeot-total.content}"
}

# peugeot_l500r-hybrid-vision-gran-turismo-2017 item
data "local_file" "car_peugeot_l500r-hybrid-vision-gran-turismo-2017" {
  filename = "${path.module}/item/car/peugeot_l500r-hybrid-vision-gran-turismo-2017.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_l500r-hybrid-vision-gran-turismo-2017" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_l500r-hybrid-vision-gran-turismo-2017.content}"
}

# peugeot_l750r-hybrid-vision-gran-turismo-2017 item
data "local_file" "car_peugeot_l750r-hybrid-vision-gran-turismo-2017" {
  filename = "${path.module}/item/car/peugeot_l750r-hybrid-vision-gran-turismo-2017.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_l750r-hybrid-vision-gran-turismo-2017" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_l750r-hybrid-vision-gran-turismo-2017.content}"
}

# peugeot_rcz-gr3-road-car item
data "local_file" "car_peugeot_rcz-gr3-road-car" {
  filename = "${path.module}/item/car/peugeot_rcz-gr3-road-car.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_rcz-gr3-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_rcz-gr3-road-car.content}"
}

# peugeot_rcz-gr3 item
data "local_file" "car_peugeot_rcz-gr3" {
  filename = "${path.module}/item/car/peugeot_rcz-gr3.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_rcz-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_rcz-gr3.content}"
}

# peugeot_rcz-gr4 item
data "local_file" "car_peugeot_rcz-gr4" {
  filename = "${path.module}/item/car/peugeot_rcz-gr4.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_rcz-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_rcz-gr4.content}"
}

# peugeot_rcz-grb-rally-car item
data "local_file" "car_peugeot_rcz-grb-rally-car" {
  filename = "${path.module}/item/car/peugeot_rcz-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_rcz-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_rcz-grb-rally-car.content}"
}

# peugeot_rcz-gt-line item
data "local_file" "car_peugeot_rcz-gt-line" {
  filename = "${path.module}/item/car/peugeot_rcz-gt-line.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_rcz-gt-line" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_rcz-gt-line.content}"
}

# peugeot_vision-gran-turismo-gr3 item
data "local_file" "car_peugeot_vision-gran-turismo-gr3" {
  filename = "${path.module}/item/car/peugeot_vision-gran-turismo-gr3.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_vision-gran-turismo-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_vision-gran-turismo-gr3.content}"
}

# peugeot_vision-gran-turismo item
data "local_file" "car_peugeot_vision-gran-turismo" {
  filename = "${path.module}/item/car/peugeot_vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_peugeot_vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_peugeot_vision-gran-turismo.content}"
}

# plymouth_xnr-ghia-roadster item
data "local_file" "car_plymouth_xnr-ghia-roadster" {
  filename = "${path.module}/item/car/plymouth_xnr-ghia-roadster.json"
}

resource "aws_dynamodb_table_item" "car_plymouth_xnr-ghia-roadster" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_plymouth_xnr-ghia-roadster.content}"
}

# pontiac_firebird-trans-am item
data "local_file" "car_pontiac_firebird-trans-am" {
  filename = "${path.module}/item/car/pontiac_firebird-trans-am.json"
}

resource "aws_dynamodb_table_item" "car_pontiac_firebird-trans-am" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_pontiac_firebird-trans-am.content}"
}

# porsche_356-a1500-gs-gt-carrera-speedster item
data "local_file" "car_porsche_356-a1500-gs-gt-carrera-speedster" {
  filename = "${path.module}/item/car/porsche_356-a1500-gs-gt-carrera-speedster.json"
}

resource "aws_dynamodb_table_item" "car_porsche_356-a1500-gs-gt-carrera-speedster" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_356-a1500-gs-gt-carrera-speedster.content}"
}

# porsche_911-gt3-996 item
data "local_file" "car_porsche_911-gt3-996" {
  filename = "${path.module}/item/car/porsche_911-gt3-996.json"
}

resource "aws_dynamodb_table_item" "car_porsche_911-gt3-996" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_911-gt3-996.content}"
}

# porsche_911-gt3-997 item
data "local_file" "car_porsche_911-gt3-997" {
  filename = "${path.module}/item/car/porsche_911-gt3-997.json"
}

resource "aws_dynamodb_table_item" "car_porsche_911-gt3-997" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_911-gt3-997.content}"
}

# porsche_911-gt3-rs-991 item
data "local_file" "car_porsche_911-gt3-rs-991" {
  filename = "${path.module}/item/car/porsche_911-gt3-rs-991.json"
}

resource "aws_dynamodb_table_item" "car_porsche_911-gt3-rs-991" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_911-gt3-rs-991.content}"
}

# porsche_911-rsr-991 item
data "local_file" "car_porsche_911-rsr-991" {
  filename = "${path.module}/item/car/porsche_911-rsr-991.json"
}

resource "aws_dynamodb_table_item" "car_porsche_911-rsr-991" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_911-rsr-991.content}"
}

# porsche_962-c item
data "local_file" "car_porsche_962-c" {
  filename = "${path.module}/item/car/porsche_962-c.json"
}

resource "aws_dynamodb_table_item" "car_porsche_962-c" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_962-c.content}"
}

# porsche_919-hybrid-porsche-team item
data "local_file" "car_porsche_919-hybrid-porsche-team" {
  filename = "${path.module}/item/car/porsche_919-hybrid-porsche-team.json"
}

resource "aws_dynamodb_table_item" "car_porsche_919-hybrid-porsche-team" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_919-hybrid-porsche-team.content}"
}

# porsche_cayman-gt4-clubsport item
data "local_file" "car_porsche_cayman-gt4-clubsport" {
  filename = "${path.module}/item/car/porsche_cayman-gt4-clubsport.json"
}

resource "aws_dynamodb_table_item" "car_porsche_cayman-gt4-clubsport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_porsche_cayman-gt4-clubsport.content}"
}

# renault_r8-gordini item
data "local_file" "car_renault_r8-gordini" {
  filename = "${path.module}/item/car/renault_r8-gordini.json"
}

resource "aws_dynamodb_table_item" "car_renault_r8-gordini" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault_r8-gordini.content}"
}

# renault-sport_clio-rs-220-edc-trophy-15 item
data "local_file" "car_renault-sport_clio-rs-220-edc-trophy-15" {
  filename = "${path.module}/item/car/renault-sport_clio-rs-220-edc-trophy-15.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_clio-rs-220-edc-trophy-15" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_clio-rs-220-edc-trophy-15.content}"
}

# renault-sport_clio-rs-220-edc-trophy-16 item
data "local_file" "car_renault-sport_clio-rs-220-edc-trophy-16" {
  filename = "${path.module}/item/car/renault-sport_clio-rs-220-edc-trophy-16.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_clio-rs-220-edc-trophy-16" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_clio-rs-220-edc-trophy-16.content}"
}

# renault-sport_megane-gr4 item
data "local_file" "car_renault-sport_megane-gr4" {
  filename = "${path.module}/item/car/renault-sport_megane-gr4.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_megane-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_megane-gr4.content}"
}

# renault-sport_megane-rs-trophy item
data "local_file" "car_renault-sport_megane-rs-trophy" {
  filename = "${path.module}/item/car/renault-sport_megane-rs-trophy.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_megane-rs-trophy" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_megane-rs-trophy.content}"
}

# renault-sport_megane-trophy item
data "local_file" "car_renault-sport_megane-trophy" {
  filename = "${path.module}/item/car/renault-sport_megane-trophy.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_megane-trophy" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_megane-trophy.content}"
}

# renault-sport_rs01-gt3 item
data "local_file" "car_renault-sport_rs01-gt3" {
  filename = "${path.module}/item/car/renault-sport_rs01-gt3.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_rs01-gt3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_rs01-gt3.content}"
}

# renault-sport_rs01 item
data "local_file" "car_renault-sport_rs01" {
  filename = "${path.module}/item/car/renault-sport_rs01.json"
}

resource "aws_dynamodb_table_item" "car_renault-sport_rs01" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_renault-sport_rs01.content}"
}

# shelby_cobra-427 item
data "local_file" "car_shelby_cobra-427" {
  filename = "${path.module}/item/car/shelby_cobra-427.json"
}

resource "aws_dynamodb_table_item" "car_shelby_cobra-427" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_shelby_cobra-427.content}"
}

# shelby_cobra-daytona-coupe item
data "local_file" "car_shelby_cobra-daytona-coupe" {
  filename = "${path.module}/item/car/shelby_cobra-daytona-coupe.json"
}

resource "aws_dynamodb_table_item" "car_shelby_cobra-daytona-coupe" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_shelby_cobra-daytona-coupe.content}"
}

# shelby_gt-350 item
data "local_file" "car_shelby_gt-350" {
  filename = "${path.module}/item/car/shelby_gt-350.json"
}

resource "aws_dynamodb_table_item" "car_shelby_gt-350" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_shelby_gt-350.content}"
}

# subaru_brz-s item
data "local_file" "car_subaru_brz-s" {
  filename = "${path.module}/item/car/subaru_brz-s.json"
}

resource "aws_dynamodb_table_item" "car_subaru_brz-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_brz-s.content}"
}

# subaru_falken-tire-turn-14-distribution-brz item
data "local_file" "car_subaru_falken-tire-turn-14-distribution-brz" {
  filename = "${path.module}/item/car/subaru_falken-tire-turn-14-distribution-brz.json"
}

resource "aws_dynamodb_table_item" "car_subaru_falken-tire-turn-14-distribution-brz" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_falken-tire-turn-14-distribution-brz.content}"
}

# subaru_impreza-22b-sti-version item
data "local_file" "car_subaru_impreza-22b-sti-version" {
  filename = "${path.module}/item/car/subaru_impreza-22b-sti-version.json"
}

resource "aws_dynamodb_table_item" "car_subaru_impreza-22b-sti-version" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_impreza-22b-sti-version.content}"
}

# subaru_viziv-gt-vision-gran-turismo item
data "local_file" "car_subaru_viziv-gt-vision-gran-turismo" {
  filename = "${path.module}/item/car/subaru_viziv-gt-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_subaru_viziv-gt-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_viziv-gt-vision-gran-turismo.content}"
}

# subaru_wrx-gr3 item
data "local_file" "car_subaru_wrx-gr3" {
  filename = "${path.module}/item/car/subaru_wrx-gr3.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-gr3.content}"
}

# subaru_wrx-gr4 item
data "local_file" "car_subaru_wrx-gr4" {
  filename = "${path.module}/item/car/subaru_wrx-gr4.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-gr4.content}"
}

# subaru_wrx-grb-rally-car item
data "local_file" "car_subaru_wrx-grb-rally-car" {
  filename = "${path.module}/item/car/subaru_wrx-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-grb-rally-car.content}"
}

# subaru_wrx-grb-road-car item
data "local_file" "car_subaru_wrx-grb-road-car" {
  filename = "${path.module}/item/car/subaru_wrx-grb-road-car.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-grb-road-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-grb-road-car.content}"
}

# subaru_wrx-sti-isle-of-man-time-attack-car item
data "local_file" "car_subaru_wrx-sti-isle-of-man-time-attack-car" {
  filename = "${path.module}/item/car/subaru_wrx-sti-isle-of-man-time-attack-car.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-sti-isle-of-man-time-attack-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-sti-isle-of-man-time-attack-car.content}"
}

# subaru_wrx-sti-type-s item
data "local_file" "car_subaru_wrx-sti-type-s" {
  filename = "${path.module}/item/car/subaru_wrx-sti-type-s.json"
}

resource "aws_dynamodb_table_item" "car_subaru_wrx-sti-type-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_subaru_wrx-sti-type-s.content}"
}

# suzuki_swift-sport item
data "local_file" "car_suzuki_swift-sport" {
  filename = "${path.module}/item/car/suzuki_swift-sport.json"
}

resource "aws_dynamodb_table_item" "car_suzuki_swift-sport" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_suzuki_swift-sport.content}"
}

# tesla-motors_models-s-signature-performance item
data "local_file" "car_tesla-motors_models-s-signature-performance" {
  filename = "${path.module}/item/car/tesla-motors_models-s-signature-performance.json"
}

resource "aws_dynamodb_table_item" "car_tesla-motors_models-s-signature-performance" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_tesla-motors_models-s-signature-performance.content}"
}

# toyota-86-gr4 item
data "local_file" "car_toyota-86-gr4" {
  filename = "${path.module}/item/car/toyota-86-gr4.json"
}

resource "aws_dynamodb_table_item" "car_toyota-86-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota-86-gr4.content}"
}

# toyota_2000gt item
data "local_file" "car_toyota_2000gt" {
  filename = "${path.module}/item/car/toyota_2000gt.json"
}

resource "aws_dynamodb_table_item" "car_toyota_2000gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_2000gt.content}"
}

# toyota_86-grb-rally-car item
data "local_file" "car_toyota_86-grb-rally-car" {
  filename = "${path.module}/item/car/toyota_86-grb-rally-car.json"
}

resource "aws_dynamodb_table_item" "car_toyota_86-grb-rally-car" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_86-grb-rally-car.content}"
}

# toyota_86-grmn item
data "local_file" "car_toyota_86-grmn" {
  filename = "${path.module}/item/car/toyota_86-grmn.json"
}

resource "aws_dynamodb_table_item" "car_toyota_86-grmn" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_86-grmn.content}"
}

# toyota_86-gt item
data "local_file" "car_toyota_86-gt" {
  filename = "${path.module}/item/car/toyota_86-gt.json"
}

resource "aws_dynamodb_table_item" "car_toyota_86-gt" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_86-gt.content}"
}

# toyota_ft-1-vision-gran-turismo-gr3 item
data "local_file" "car_toyota_ft-1-vision-gran-turismo-gr3" {
  filename = "${path.module}/item/car/toyota_ft-1-vision-gran-turismo-gr3.json"
}

resource "aws_dynamodb_table_item" "car_toyota_ft-1-vision-gran-turismo-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_ft-1-vision-gran-turismo-gr3.content}"
}

# toyota_ft-1-vision-gran-turismo item
data "local_file" "car_toyota_ft-1-vision-gran-turismo" {
  filename = "${path.module}/item/car/toyota_ft-1-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_toyota_ft-1-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_ft-1-vision-gran-turismo.content}"
}

# toyota_ft-1 item
data "local_file" "car_toyota_ft-1" {
  filename = "${path.module}/item/car/toyota_ft-1.json"
}

resource "aws_dynamodb_table_item" "car_toyota_ft-1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_ft-1.content}"
}

# toyota_gr-supra-racing-concept item
data "local_file" "car_toyota_gr-supra-racing-concept" {
  filename = "${path.module}/item/car/toyota_gr-supra-racing-concept.json"
}

resource "aws_dynamodb_table_item" "car_toyota_gr-supra-racing-concept" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_gr-supra-racing-concept.content}"
}

# toyota_gr-supra-rz-2019 item
data "local_file" "car_toyota_gr-supra-rz-2019" {
  filename = "${path.module}/item/car/toyota_gr-supra-rz-2019.json"
}

resource "aws_dynamodb_table_item" "car_toyota_gr-supra-rz-2019" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_gr-supra-rz-2019.content}"
}

# toyota_mr2-gt-s item
data "local_file" "car_toyota_mr2-gt-s" {
  filename = "${path.module}/item/car/toyota_mr2-gt-s.json"
}

resource "aws_dynamodb_table_item" "car_toyota_mr2-gt-s" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_mr2-gt-s.content}"
}

# toyota_s-fr-racing-concept item
data "local_file" "car_toyota_s-fr-racing-concept" {
  filename = "${path.module}/item/car/toyota_s-fr-racing-concept.json"
}

resource "aws_dynamodb_table_item" "car_toyota_s-fr-racing-concept" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_s-fr-racing-concept.content}"
}

# toyota_s-fr item
data "local_file" "car_toyota_s-fr" {
  filename = "${path.module}/item/car/toyota_s-fr.json"
}

resource "aws_dynamodb_table_item" "car_toyota_s-fr" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_s-fr.content}"
}

# toyota_supra-3-0gt-turbo-a item
data "local_file" "car_toyota_supra-3-0gt-turbo-a" {
  filename = "${path.module}/item/car/toyota_supra-3-0gt-turbo-a.json"
}

resource "aws_dynamodb_table_item" "car_toyota_supra-3-0gt-turbo-a" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_supra-3-0gt-turbo-a.content}"
}

# toyota_supra-rz item
data "local_file" "car_toyota_supra-rz" {
  filename = "${path.module}/item/car/toyota_supra-rz.json"
}

resource "aws_dynamodb_table_item" "car_toyota_supra-rz" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_supra-rz.content}"
}

# toyota_ts030-hybrid item
data "local_file" "car_toyota_ts030-hybrid" {
  filename = "${path.module}/item/car/toyota_ts030-hybrid.json"
}

resource "aws_dynamodb_table_item" "car_toyota_ts030-hybrid" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_ts030-hybrid.content}"
}

# toyota_ts050-hybrid-toyota-gazoo-racing item
data "local_file" "car_toyota_ts050-hybrid-toyota-gazoo-racing" {
  filename = "${path.module}/item/car/toyota_ts050-hybrid-toyota-gazoo-racing.json"
}

resource "aws_dynamodb_table_item" "car_toyota_ts050-hybrid-toyota-gazoo-racing" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_toyota_ts050-hybrid-toyota-gazoo-racing.content}"
}

# tvr_tuscan-speed-6 item
data "local_file" "car_tvr_tuscan-speed-6" {
  filename = "${path.module}/item/car/tvr_tuscan-speed-6.json"
}

resource "aws_dynamodb_table_item" "car_tvr_tuscan-speed-6" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_tvr_tuscan-speed-6.content}"
}

# volkswagen_1220 item
data "local_file" "car_volkswagen_1220" {
  filename = "${path.module}/item/car/volkswagen_1220.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_1220" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_1220.content}"
}

# volkswagen_beetle-gr3 item
data "local_file" "car_volkswagen_beetle-gr3" {
  filename = "${path.module}/item/car/volkswagen_beetle-gr3.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_beetle-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_beetle-gr3.content}"
}

# volkswagen_golf-vii-gti item
data "local_file" "car_volkswagen_golf-vii-gti" {
  filename = "${path.module}/item/car/volkswagen_golf-vii-gti.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_golf-vii-gti" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_golf-vii-gti.content}"
}

# volkswagen_gti-roadster-vision-gran-turismo item
data "local_file" "car_volkswagen_gti-roadster-vision-gran-turismo" {
  filename = "${path.module}/item/car/volkswagen_gti-roadster-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_gti-roadster-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_gti-roadster-vision-gran-turismo.content}"
}

# volkswagen_gti-supersport-vision-gran-turismo item
data "local_file" "car_volkswagen_gti-supersport-vision-gran-turismo" {
  filename = "${path.module}/item/car/volkswagen_gti-supersport-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_gti-supersport-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_gti-supersport-vision-gran-turismo.content}"
}

# volkswagen_gti-vision-gran-turismo-gr3 item
data "local_file" "car_volkswagen_gti-vision-gran-turismo-gr3" {
  filename = "${path.module}/item/car/volkswagen_gti-vision-gran-turismo-gr3.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_gti-vision-gran-turismo-gr3" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_gti-vision-gran-turismo-gr3.content}"
}

# volkswagen_sambabus-typ-2-t1 item
data "local_file" "car_volkswagen_sambabus-typ-2-t1" {
  filename = "${path.module}/item/car/volkswagen_sambabus-typ-2-t1.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_sambabus-typ-2-t1" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_sambabus-typ-2-t1.content}"
}

# volkswagen_sirocco-gr4 item
data "local_file" "car_volkswagen_sirocco-gr4" {
  filename = "${path.module}/item/car/volkswagen_sirocco-gr4.json"
}

resource "aws_dynamodb_table_item" "car_volkswagen_sirocco-gr4" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_volkswagen_sirocco-gr4.content}"
}

# zagato_isorivolta-zagato-vision-gran-turismo item
data "local_file" "car_zagato_isorivolta-zagato-vision-gran-turismo" {
  filename = "${path.module}/item/car/zagato_isorivolta-zagato-vision-gran-turismo.json"
}

resource "aws_dynamodb_table_item" "car_zagato_isorivolta-zagato-vision-gran-turismo" {
  table_name = "${aws_dynamodb_table.car.name}"
  hash_key   = "${aws_dynamodb_table.car.hash_key}"

  item = "${data.local_file.car_zagato_isorivolta-zagato-vision-gran-turismo.content}"
}
