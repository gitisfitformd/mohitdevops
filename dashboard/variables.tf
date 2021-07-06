data "terraform_remote_state" "monitor" {
  backend = "local"

  config = {
    path = "../../../generated/datadog/monitor/terraform.tfstate"
  }
}
