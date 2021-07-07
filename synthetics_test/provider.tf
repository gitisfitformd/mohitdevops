provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "iac-terra-backend"
    key    = ""
    region = "us-east-1"
   }
}
