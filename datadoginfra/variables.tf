variable datadog_api_key {
  type        = string
  default     = "7a56605020f437500ea696be424e69f8"
  description = "API key for Datadog"
}

variable datadog_app_key {
  type        = string
  default     = "e0845caa221c9b0d03459795e38d8f6eeceff2f9"
  description = "APP key for Datadog"
}


variable type {
  type        = string
  default     = ""
  description = "Kind of test you want to run like API, browser"
}

variable subtype {
  type        = string
  default     = ""
  description = "Choices are HTTP , SSL , DNS"
}

variable url {
  type        = string
  default     = ""
  description = "URL on which test will run"
}

variable request_headers {
  type        = map(string)
  default     = null
}

variable locations {
  type        = list(string)
  default     = []
}

variable "alert_tags" {
  type        = list(string)
  description = "List of alert tags to add to all alert messages, e.g. `[\"@opsgenie\"]` or `[\"@devops\", \"@opsgenie\"]`"
  default     = null
}

variable "alert_tags_separator" {
  type        = string
  description = "Separator for the alert tags. All strings from the `alert_tags` variable will be joined into one string using the separator and then added to the alert message"
  default     = "\n"
}
