resource "aws_cloudfront_distribution" "main" {
  aliases = [
    "${var.application}.${lookup(var.env_dns_zones_prefix, terraform.workspace)}${var.domain}",
  ]

  default_cache_behavior {
    allowed_methods = [
      "HEAD",
      "GET",
      "POST",
      "DELETE",
      "OPTIONS",
      "PUT",
      "PATCH",
    ]

    cached_methods = [
      "HEAD",
      "GET",
    ]

    compress = true

    min_ttl     = 0
    default_ttl = 0
    max_ttl     = 0

    forwarded_values {
      query_string = true

      headers = [
        "authorization",
      ]

      cookies {
        forward = "none"
      }
    }

    target_origin_id       = "AppSync-${aws_appsync_graphql_api.main.id}"
    viewer_protocol_policy = "redirect-to-https"

    smooth_streaming = "false"
  }

  enabled         = true
  is_ipv6_enabled = true
  http_version    = "http2"

  origin {
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"

      origin_ssl_protocols = [
        "TLSv1",
        "TLSv1.1",
        "TLSv1.2",
      ]

      origin_keepalive_timeout = 5
      origin_read_timeout      = 30
    }

    domain_name = "${replace(replace(aws_appsync_graphql_api.main.uris["GRAPHQL"], "https://", ""), "/graphql", "")}"
    origin_id   = "AppSync-${aws_appsync_graphql_api.main.id}"
    origin_path = "/graphql"
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "${aws_acm_certificate_validation.main.certificate_arn}"
    cloudfront_default_certificate = "false"
    minimum_protocol_version       = "TLSv1"
    ssl_support_method             = "sni-only"
  }

  tags = {
    Workspace   = "${terraform.workspace}"
    Environment = "${lookup(var.env_names, terraform.workspace)}"
    App         = "${var.application}"
    terraformed = "true"
  }
}
