terraform {
  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0"
    }

    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.13"
    } 
 }
}

resource "datadog_synthetics_test" "default" {
  type    = var.type
  subtype = var.subtype
  request_definition {
    method = "GET"
    url    = var.url
  }
  request_headers = var.request_headers
  assertion {
    type     = "statusCode"  
    operator = "is"
    target   = "200"
  }
  locations = var.locations
  options_list {
    tick_every = 900

    retry {
      count    = 2
      interval = 300
    }

    monitor_options {
      renotify_interval = 100
    }
  }
  name    = "Monitor ${var.url} homepage"
  message = "Site ${var.url} is down "
  tags    = var.alert_tags

  status = "live"
}