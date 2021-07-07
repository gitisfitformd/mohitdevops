resource "datadog_dashboard" "tfer--dashboard_37x-002D-rv7-002D-rue" {
  description  = "HCaaS Uptime SLO Summary\n\nThis Dashboard  summarizes the SLO details for all the HCaaS Assets ."
  is_read_only = "false"
  layout_type  = "free"
  notify_list  = ["modubey@deloitte.com"]

  template_variable {
    default = "302"
    name    = "var"
    prefix  = "status_code"
  }

  title = "HCaaS Uptime SLO Summary"
  url   = "/dashboard/37x-rv7-rue/hcaas-uptime-slo-summary"
}

resource "datadog_dashboard" "tfer--dashboard_fx3-002D-z6r-002D-k69" {
  is_read_only = "true"
  layout_type  = "free"

  template_variable {
    default = "aona"
    name    = "var"
    prefix  = "env"
  }

  title = "AONA Dashboard"
  url   = "/dashboard/fx3-z6r-k69/aona-dashboard"
}

resource "datadog_dashboard" "tfer--dashboard_i3b-002D-2da-002D-ftr" {
  is_read_only = "false"
  layout_type  = "ordered"
  reflow_type  = "fixed"

  template_variable {
    default = "_connectme"
    name    = "var"
    prefix  = "env"
  }

  title = "ConnectME   Uptime Dashboard"
  url   = "/dashboard/i3b-2da-ftr/connectme-uptime-dashboard"
}

resource "datadog_dashboard" "tfer--dashboard_mzy-002D-zd3-002D-q4d" {
  is_read_only = "false"
  layout_type  = "free"
  notify_list  = ["sanddubey@deloitte.com"]

  template_variable {
    default = "membersite"
    name    = "Variable"
    prefix  = "env"
  }

  template_variable {
    default = "*"
    name    = "Var"
  }

  template_variable_preset {
    name = "Responses"

    template_variable {
      name  = "API-Response"
      value = "https://workforce-sensing.deloitte.com"
    }

    template_variable {
      name  = "HTTP-Response"
      value = "https://humancapitalresearch.deloitte.com"
    }
  }

  title = "HTTP Response Time"
  url   = "/dashboard/mzy-zd3-q4d/http-response-time"
}

resource "datadog_dashboard" "tfer--dashboard_s6b-002D-ixt-002D-zke" {
  is_read_only = "false"
  layout_type  = "free"
  title        = "I2A Dashboard"
  url          = "/dashboard/s6b-ixt-zke/i2a-dashboard"
}

resource "datadog_dashboard" "tfer--dashboard_u82-002D-zxp-002D-ead" {
  is_read_only = "false"
  layout_type  = "free"
  title        = "Transactional Monitoring Dashboard"
  url          = "/dashboard/u82-zxp-ead/transactional-monitoring-dashboard"
}
