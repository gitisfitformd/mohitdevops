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

module datadogsynthetics {
  source = "../modules/datadogsynthetics"
  
  type          =    var.type
  subtype       =    var.subtype
  url           =    var.url
  locations     =    var.locations
  alert_tags    =    var.alert_tags
}
