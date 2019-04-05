# Manufacturer table
resource "aws_dynamodb_table" "manufacturer" {
  name         = "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}_manufacturer"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute = {
    name = "id"
    type = "S"
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

# abarth item
data "local_file" "manufacturer_abarth" {
  filename = "${path.module}/item/manufacturer/abarth.json"
}

resource "aws_dynamodb_table_item" "manufacturer_abarth" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_abarth.content}"
}

# alfa-romeo item
data "local_file" "manufacturer_alfa-romeo" {
  filename = "${path.module}/item/manufacturer/alfa-romeo.json"
}

resource "aws_dynamodb_table_item" "manufacturer_alfa-romeo" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_alfa-romeo.content}"
}

# alpine item
data "local_file" "manufacturer_alpine" {
  filename = "${path.module}/item/manufacturer/alpine.json"
}

resource "aws_dynamodb_table_item" "manufacturer_alpine" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_alpine.content}"
}

# amuse item
data "local_file" "manufacturer_amuse" {
  filename = "${path.module}/item/manufacturer/amuse.json"
}

resource "aws_dynamodb_table_item" "manufacturer_amuse" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_amuse.content}"
}

# aston-martin item
data "local_file" "manufacturer_aston-martin" {
  filename = "${path.module}/item/manufacturer/aston-martin.json"
}

resource "aws_dynamodb_table_item" "manufacturer_aston-martin" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_aston-martin.content}"
}

# audi item
data "local_file" "manufacturer_audi" {
  filename = "${path.module}/item/manufacturer/audi.json"
}

resource "aws_dynamodb_table_item" "manufacturer_audi" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_audi.content}"
}

# bmw item
data "local_file" "manufacturer_bmw" {
  filename = "${path.module}/item/manufacturer/bmw.json"
}

resource "aws_dynamodb_table_item" "manufacturer_bmw" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_bmw.content}"
}

# bugatti item
data "local_file" "manufacturer_bugatti" {
  filename = "${path.module}/item/manufacturer/bugatti.json"
}

resource "aws_dynamodb_table_item" "manufacturer_bugatti" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_bugatti.content}"
}

# chaparral item
data "local_file" "manufacturer_chaparral" {
  filename = "${path.module}/item/manufacturer/chaparral.json"
}

resource "aws_dynamodb_table_item" "manufacturer_chaparral" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_chaparral.content}"
}

# chevrolet item
data "local_file" "manufacturer_chevrolet" {
  filename = "${path.module}/item/manufacturer/chevrolet.json"
}

resource "aws_dynamodb_table_item" "manufacturer_chevrolet" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_chevrolet.content}"
}

# citroen item
data "local_file" "manufacturer_citroen" {
  filename = "${path.module}/item/manufacturer/citroen.json"
}

resource "aws_dynamodb_table_item" "manufacturer_citroen" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_citroen.content}"
}

# daihatsu item
data "local_file" "manufacturer_daihatsu" {
  filename = "${path.module}/item/manufacturer/daihatsu.json"
}

resource "aws_dynamodb_table_item" "manufacturer_daihatsu" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_daihatsu.content}"
}

# dallara item
data "local_file" "manufacturer_dallara" {
  filename = "${path.module}/item/manufacturer/dallara.json"
}

resource "aws_dynamodb_table_item" "manufacturer_dallara" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_dallara.content}"
}

# de-tomaso item
data "local_file" "manufacturer_de-tomaso" {
  filename = "${path.module}/item/manufacturer/de-tomaso.json"
}

resource "aws_dynamodb_table_item" "manufacturer_de-tomaso" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_de-tomaso.content}"
}

# dodge item
data "local_file" "manufacturer_dodge" {
  filename = "${path.module}/item/manufacturer/dodge.json"
}

resource "aws_dynamodb_table_item" "manufacturer_dodge" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_dodge.content}"
}

# ferrari item
data "local_file" "manufacturer_ferrari" {
  filename = "${path.module}/item/manufacturer/ferrari.json"
}

resource "aws_dynamodb_table_item" "manufacturer_ferrari" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_ferrari.content}"
}

# fiat item
data "local_file" "manufacturer_fiat" {
  filename = "${path.module}/item/manufacturer/fiat.json"
}

resource "aws_dynamodb_table_item" "manufacturer_fiat" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_fiat.content}"
}

# fittipaldi-motors item
data "local_file" "manufacturer_fittipaldi-motors" {
  filename = "${path.module}/item/manufacturer/fittipaldi-motors.json"
}

resource "aws_dynamodb_table_item" "manufacturer_fittipaldi-motors" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_fittipaldi-motors.content}"
}

# ford item
data "local_file" "manufacturer_ford" {
  filename = "${path.module}/item/manufacturer/ford.json"
}

resource "aws_dynamodb_table_item" "manufacturer_ford" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_ford.content}"
}

# gran-turismo item
data "local_file" "manufacturer_gran-turismo" {
  filename = "${path.module}/item/manufacturer/gran-turismo.json"
}

resource "aws_dynamodb_table_item" "manufacturer_gran-turismo" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_gran-turismo.content}"
}

# greddy item
data "local_file" "manufacturer_greddy" {
  filename = "${path.module}/item/manufacturer/greddy.json"
}

resource "aws_dynamodb_table_item" "manufacturer_greddy" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_greddy.content}"
}

# gt-awards-sema item
data "local_file" "manufacturer_gt-awards-sema" {
  filename = "${path.module}/item/manufacturer/gt-awards-sema.json"
}

resource "aws_dynamodb_table_item" "manufacturer_gt-awards-sema" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_gt-awards-sema.content}"
}

# honda item
data "local_file" "manufacturer_honda" {
  filename = "${path.module}/item/manufacturer/honda.json"
}

resource "aws_dynamodb_table_item" "manufacturer_honda" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_honda.content}"
}

# hyundai item
data "local_file" "manufacturer_hyundai" {
  filename = "${path.module}/item/manufacturer/hyundai.json"
}

resource "aws_dynamodb_table_item" "manufacturer_hyundai" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_hyundai.content}"
}

# infiniti item
data "local_file" "manufacturer_infiniti" {
  filename = "${path.module}/item/manufacturer/infiniti.json"
}

resource "aws_dynamodb_table_item" "manufacturer_infiniti" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_infiniti.content}"
}

# jaguar item
data "local_file" "manufacturer_jaguar" {
  filename = "${path.module}/item/manufacturer/jaguar.json"
}

resource "aws_dynamodb_table_item" "manufacturer_jaguar" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_jaguar.content}"
}

# ktm item
data "local_file" "manufacturer_ktm" {
  filename = "${path.module}/item/manufacturer/ktm.json"
}

resource "aws_dynamodb_table_item" "manufacturer_ktm" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_ktm.content}"
}

# lamborghini item
data "local_file" "manufacturer_lamborghini" {
  filename = "${path.module}/item/manufacturer/lamborghini.json"
}

resource "aws_dynamodb_table_item" "manufacturer_lamborghini" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_lamborghini.content}"
}

# lancia item
data "local_file" "manufacturer_lancia" {
  filename = "${path.module}/item/manufacturer/lancia.json"
}

resource "aws_dynamodb_table_item" "manufacturer_lancia" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_lancia.content}"
}

# lexus item
data "local_file" "manufacturer_lexus" {
  filename = "${path.module}/item/manufacturer/lexus.json"
}

resource "aws_dynamodb_table_item" "manufacturer_lexus" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_lexus.content}"
}

# maseratti item
data "local_file" "manufacturer_maseratti" {
  filename = "${path.module}/item/manufacturer/maseratti.json"
}

resource "aws_dynamodb_table_item" "manufacturer_maseratti" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_maseratti.content}"
}

# mazda item
data "local_file" "manufacturer_mazda" {
  filename = "${path.module}/item/manufacturer/mazda.json"
}

resource "aws_dynamodb_table_item" "manufacturer_mazda" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_mazda.content}"
}

# mclaren item
data "local_file" "manufacturer_mclaren" {
  filename = "${path.module}/item/manufacturer/mclaren.json"
}

resource "aws_dynamodb_table_item" "manufacturer_mclaren" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_mclaren.content}"
}

# mercedes-benz item
data "local_file" "manufacturer_mercedes-benz" {
  filename = "${path.module}/item/manufacturer/mercedes-benz.json"
}

resource "aws_dynamodb_table_item" "manufacturer_mercedes-benz" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_mercedes-benz.content}"
}

# mini item
data "local_file" "manufacturer_mini" {
  filename = "${path.module}/item/manufacturer/mini.json"
}

resource "aws_dynamodb_table_item" "manufacturer_mini" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_mini.content}"
}

# mitsubishi item
data "local_file" "manufacturer_mitsubishi" {
  filename = "${path.module}/item/manufacturer/mitsubishi.json"
}

resource "aws_dynamodb_table_item" "manufacturer_mitsubishi" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_mitsubishi.content}"
}

# nissan item
data "local_file" "manufacturer_nissan" {
  filename = "${path.module}/item/manufacturer/nissan.json"
}

resource "aws_dynamodb_table_item" "manufacturer_nissan" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_nissan.content}"
}

# pagani item
data "local_file" "manufacturer_pagani" {
  filename = "${path.module}/item/manufacturer/pagani.json"
}

resource "aws_dynamodb_table_item" "manufacturer_pagani" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_pagani.content}"
}

# peugeot item
data "local_file" "manufacturer_peugeot" {
  filename = "${path.module}/item/manufacturer/peugeot.json"
}

resource "aws_dynamodb_table_item" "manufacturer_peugeot" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_peugeot.content}"
}

# plymouth item
data "local_file" "manufacturer_plymouth" {
  filename = "${path.module}/item/manufacturer/plymouth.json"
}

resource "aws_dynamodb_table_item" "manufacturer_plymouth" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_plymouth.content}"
}

# pontiac item
data "local_file" "manufacturer_pontiac" {
  filename = "${path.module}/item/manufacturer/pontiac.json"
}

resource "aws_dynamodb_table_item" "manufacturer_pontiac" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_pontiac.content}"
}

# porsche item
data "local_file" "manufacturer_porsche" {
  filename = "${path.module}/item/manufacturer/porsche.json"
}

resource "aws_dynamodb_table_item" "manufacturer_porsche" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_porsche.content}"
}

# renault-sport item
data "local_file" "manufacturer_renault-sport" {
  filename = "${path.module}/item/manufacturer/renault-sport.json"
}

resource "aws_dynamodb_table_item" "manufacturer_renault-sport" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_renault-sport.content}"
}

# shelby item
data "local_file" "manufacturer_shelby" {
  filename = "${path.module}/item/manufacturer/shelby.json"
}

resource "aws_dynamodb_table_item" "manufacturer_shelby" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_shelby.content}"
}

# subaru item
data "local_file" "manufacturer_subaru" {
  filename = "${path.module}/item/manufacturer/subaru.json"
}

resource "aws_dynamodb_table_item" "manufacturer_subaru" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_subaru.content}"
}

# suzuki item
data "local_file" "manufacturer_suzuki" {
  filename = "${path.module}/item/manufacturer/suzuki.json"
}

resource "aws_dynamodb_table_item" "manufacturer_suzuki" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_suzuki.content}"
}

# tesla-motors item
data "local_file" "manufacturer_tesla-motors" {
  filename = "${path.module}/item/manufacturer/tesla-motors.json"
}

resource "aws_dynamodb_table_item" "manufacturer_tesla-motors" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_tesla-motors.content}"
}

# toyota item
data "local_file" "manufacturer_toyota" {
  filename = "${path.module}/item/manufacturer/toyota.json"
}

resource "aws_dynamodb_table_item" "manufacturer_toyota" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_toyota.content}"
}

# tvr item
data "local_file" "manufacturer_tvr" {
  filename = "${path.module}/item/manufacturer/tvr.json"
}

resource "aws_dynamodb_table_item" "manufacturer_tvr" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_tvr.content}"
}

# volkswagen item
data "local_file" "manufacturer_volkswagen" {
  filename = "${path.module}/item/manufacturer/volkswagen.json"
}

resource "aws_dynamodb_table_item" "manufacturer_volkswagen" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_volkswagen.content}"
}

# zagato item
data "local_file" "manufacturer_zagato" {
  filename = "${path.module}/item/manufacturer/zagato.json"
}

resource "aws_dynamodb_table_item" "manufacturer_zagato" {
  table_name = "${aws_dynamodb_table.manufacturer.name}"
  hash_key   = "${aws_dynamodb_table.manufacturer.hash_key}"

  item = "${data.local_file.manufacturer_zagato.content}"
}
