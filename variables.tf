variable "application" {
  type = "string"

  default = "api"
}

variable "domain" {
  type = "string"

  default = "granturismo.world"
}

variable "env_names" {
  type = "map"

  default = {
    "stg" = "staging"
    "prd" = "prod"
  }
}

variable "env_dns_zones_prefix" {
  type = "map"

  default = {
    "stg" = "staging."
    "prd" = ""
  }
}

variable "google_client_id" {
  type = object({ stg = string, prd = string })
}

variable "google_client_secret" {
  type = object({ stg = string, prd = string })
}
