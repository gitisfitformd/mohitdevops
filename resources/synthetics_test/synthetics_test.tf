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

resource "datadog_synthetics_test" "tfer--synthetics_4ma-002D-df4-002D-v5t" {
  assertion {
    operator = "lessThan"
    target   = "3000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-1", "aws:sa-east-1", "aws:us-west-2", "aws:ca-central-1", "aws:us-east-2"]
  message   = "Connect me site \"abbvie.connectmehr.com\" is down\n\n@kchugh@deloitte.com \n@ruswilson@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor abbivie.connectmehr.com"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "true"
    follow_redirects     = "true"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://abbvie.connectmehr.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:CONNECTME", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_7dd-002D-fxk-002D-3h8" {
  assertion {
    operator = "lessThan"
    target   = "1000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "301"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:ap-south-1", "aws:ap-southeast-2", "aws:eu-west-3", "aws:us-east-2", "aws:ap-northeast-1", "aws:us-west-1", "aws:ap-southeast-1", "aws:eu-north-1", "aws:eu-central-1", "aws:eu-west-2", "aws:eu-west-1", "aws:ca-central-1", "aws:sa-east-1", "aws:ap-northeast-2", "aws:us-west-2"]
  message   = "{{^is_renotify}}\nALERT: @sanddubey@deloitte.com @webhook-snssms ruswilson@deloitte.com 9712559378@tmomail.net \n{{/is_renotify}}\n\n{{#is_renotify}}\n ESCALATION: This is the escalation message, It seems that an alert wasn't resolved yet @ruswilson@deloitte.com 9712559378@tmomail.net @sanddubey@deloitte.com \n{{/is_renotify}}"
  name      = "Test on google.com"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "10"
    }

    monitor_priority = "2"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://google.com"
  }

  status  = "live"
  subtype = "http"
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_7mp-002D-vdr-002D-22b" {
  assertion {
    operator = "lessThan"
    target   = "3000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "location"
    target   = "http://eu.workforceinsights.deloitte.com/Account/Login?ReturnUrl=%2F"
    type     = "header"
  }

  locations = ["aws:us-west-1", "aws:eu-north-1", "aws:eu-west-1", "aws:eu-west-3", "aws:sa-east-1", "aws:us-east-2", "aws:ca-central-1", "aws:eu-west-2", "aws:eu-central-1", "aws:us-west-2"]
  message   = "Site Down eu.workforceinsights.deloitte.com\n\n@modubey@deloitte.com @kchugh@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor eu.workforceinsights.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://eu.workforceinsights.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["region:EU", "app:RO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_8h8-002D-wum-002D-bgj" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:us-east-2", "aws:ca-central-1", "aws:sa-east-1", "aws:us-west-1"]
  message   = "Site Down aona-eu.deloitte.com \n\n@kchugh@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com \n@ruswilson@deloitte.com \n@akachhava@deloitte.com"
  name      = "Monitor aona-eu.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://aona-eu.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["region:EU", "app:AONA", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_bkq-002D-s9r-002D-gqm" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-east-2", "aws:us-west-2", "aws:us-west-1", "aws:ca-central-1", "aws:sa-east-1"]
  message   = "Site Down workforceinsightsopinions.deloitte.com @modubey@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com @kchugh@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor workforceinsightsopinions.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://workforceinsightsopinions.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["region:US", "app:RO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_h3k-002D-x47-002D-7e4" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=utf-8"
    type     = "header"
  }

  locations = ["aws:ca-central-1", "aws:us-east-2", "aws:us-west-1", "aws:sa-east-1", "aws:us-west-2"]
  message   = "Site down humancapitalresearch-api.deloitte.com\n\n@modubey@deloitte.com @kchugh@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor humancapitalresearch-api.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalresearch-api.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["env:prod", "app:membersite"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_h45-002D-mk2-002D-d7n" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  assertion {
    operator = "is"
    property = "location"
    target   = "https://humancapitalresearch.deloitte.com/login/?p=https://employeeexperience.deloitte.com"
    type     = "header"
  }

  locations = ["aws:ca-central-1", "aws:us-east-2", "aws:sa-east-1", "aws:us-west-2", "aws:us-west-1"]
  message   = "Site Down employeeexperience.deloitte.com\n\n@modubey@deloitte.com @kchugh@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor employeeexperience.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "2"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://employeeexperience.deloitte.com/"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app: EED", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_hqa-002D-pne-002D-ixr" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:sa-east-1", "aws:ca-central-1", "aws:us-west-1", "aws:us-east-2"]
  message   = "Site Down foto-int.deloitte.com \n\n @kchugh@deloitte.com @sanddubey@deloitte.com @modubey@deloitte.com @ruswilson@deloitte.com  @akachhava@deloitte.com"
  name      = "Monitor foto-int.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://foto-int.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:FOTO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_iiu-002D-ekx-002D-wmq" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html"
    type     = "header"
  }

  locations = ["aws:sa-east-1", "aws:us-west-2", "aws:us-west-1", "aws:us-east-2", "aws:ca-central-1"]
  message   = "Site Down aona.deloitte.com \n\n@kchugh@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com \n@ruswilson@deloitte.com\n@akachhava@deloitte.com\n\n{{#is_renotify}}\n{{#is_match \"env\" \"production\"}}\n  This is a P1 escalation message sent to @sbarbour@deloitte.com\n{{/is_match}}\n{{/is_renotify}} "
  name      = "Monitor aona.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://aona.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:AONA", "region:US", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_j7i-002D-scd-002D-4u2" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html"
    type     = "header"
  }

  locations = ["aws:us-west-1", "aws:ca-central-1", "aws:sa-east-1", "aws:us-east-2", "aws:us-west-2"]
  message   = "Site Down foto-admin.deloitte.com\n\n@kchugh@deloitte.com @modubey@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com  @akachhava@deloitte.com"
  name      = "Monitor foto-admin.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://foto-admin.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:FOTO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_ksw-002D-rkm-002D-6kj" {
  assertion {
    operator = "lessThan"
    target   = "4000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-1", "aws:us-east-2", "aws:us-west-2", "aws:ca-central-1", "aws:sa-east-1"]
  message   = "Site Down im-workforce-sensing.deloitte.com\n\n@kchugh@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com \n@ruswilson@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor im-workforce-sensing.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://im-workforce-sensing.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:wfs", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_m6v-002D-sq2-002D-snu" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-east-2", "aws:us-west-2", "aws:sa-east-1", "aws:ca-central-1", "aws:us-west-1"]
  message   = "Member Site Down \n\n@modubey@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com @kchugh@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor humancapitalresearch.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"
    monitor_name         = "[Synthetics] Monitor humancapitalresearch.deloitte.com homepage"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalresearch.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:membersite", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_mam-002D-vcw-002D-smf" {
  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-auth-form-email"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"at\":\"/descendant::*[@name=\\\"userName\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"co\":\"[{\\\"text\\\":\\\"business email\\\",\\\"textType\\\":\\\"placeholder\\\"}]\",\"ro\":\"//*[@id=\\\"mb-auth-form-email\\\"]\"},\"targetOuterHTML\":\"<input id=\\\"mb-auth-form-email\\\" name=\\\"userName\\\" spellcheck=\\\"false\\\" autocapitalize=\\\"none\\\" type=\\\"email\\\"\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      value      = "preftest@bersinpreftest.com"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-auth-form-submit"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/descendant::*[@enctype=\\\"application/x-www-form-urlencoded\\\"]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-auth-form-submit\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-auth-form-submit\\\" class=\\\"mb-button\\\"></div>\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-auth-form-password"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@placeholder=\\\"Password\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-auth-form-pw-ctn \\\")][1]/*[local-name()=\\\"input\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-auth-form-pw-ctn \\\")][1]/*[local-name()=\\\"input\\\"][1]\",\"co\":\"[{\\\"text\\\":\\\"password\\\",\\\"textType\\\":\\\"placeholder\\\"}]\",\"ro\":\"//*[@id=\\\"mb-auth-form-password\\\"]\"},\"targetOuterHTML\":\"<input id=\\\"mb-auth-form-password\\\" name=\\\"password\\\" type=\\\"password\\\" placeholder=\\\"Password\\\" autocomplet\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      value      = "Nopassword@321"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-auth-form-submit"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/descendant::*[@enctype=\\\"application/x-www-form-urlencoded\\\"]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-auth-form-submit\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-auth-form-submit\\\" class=\\\"mb-button\\\"></div>\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on button #mb-search-icon-button"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"at\":\"/descendant::*[@action=\\\"/search/\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-search-icon-button\\\"]\"},\"targetOuterHTML\":\"<button class=\\\"mb-search-icon-off mb-header-search-icon-before\\\" id=\\\"mb-search-icon-button\\\"></button>\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-header-search-input-box"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@name=\\\"q\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"co\":\"[{\\\"text\\\":\\\"search\\\",\\\"textType\\\":\\\"placeholder\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-search-input-box\\\"]\"},\"targetOuterHTML\":\"<input type=\\\"text\\\" name=\\\"q\\\" autocomplete=\\\"off\\\" style=\\\"\\\" id=\\\"mb-header-search-input-box\\\" value=\\\"\\\" cla\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      value      = "leadership"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on button #mb-search-icon-button"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"at\":\"/descendant::*[@action=\\\"/search/\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-search-icon-button\\\"]\"},\"targetOuterHTML\":\"<button class=\\\"mb-search-icon-off mb-header-search-icon-before mb-search-icon-off-close\\\" id=\\\"mb-sear\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-body-search-input-box"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@name=\\\"q\\\" and @value=\\\"\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-body-input-box \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-body-input-box \\\")]\",\"co\":\"[{\\\"text\\\":\\\"search\\\",\\\"textType\\\":\\\"placeholder\\\"},{\\\"relation\\\":\\\"BEFORE\\\",\\\"tagName\\\":\\\"BUTTON\\\",\\\"text\\\":\\\" scope exact phrase title only \\\",\\\"textType\\\":\\\"innerText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-body-search-input-box\\\"]\"},\"targetOuterHTML\":\"<input type=\\\"text\\\" name=\\\"q\\\" autocomplete=\\\"off\\\" style=\\\"\\\" id=\\\"mb-body-search-input-box\\\" value=\\\"\\\" class\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      value      = "leadership"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on button #mb-search-icon-button"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"at\":\"/descendant::*[@action=\\\"/search/\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-search-icon-button\\\"]\"},\"targetOuterHTML\":\"<button class=\\\"mb-search-icon-off mb-header-search-icon-before\\\" id=\\\"mb-search-icon-button\\\"></button>\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on input #mb-header-search-input-box"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@name=\\\"q\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"co\":\"[{\\\"text\\\":\\\"search\\\",\\\"textType\\\":\\\"placeholder\\\"},{\\\"relation\\\":\\\"BEFORE\\\",\\\"tagName\\\":\\\"DIV\\\",\\\"text\\\":\\\" my reading list my activity program manager account settings log out \\\",\\\"textType\\\":\\\"innerText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-search-input-box\\\"]\"},\"targetOuterHTML\":\"<input type=\\\"text\\\" name=\\\"q\\\" autocomplete=\\\"off\\\" style=\\\"\\\" id=\\\"mb-header-search-input-box\\\" value=\\\"leade\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on button #mb-clear-search"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"button\\\"][1]\",\"at\":\"/descendant::*[@action=\\\"/search/\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"button\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-icon-off-close-blue \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-icon-off-close-blue \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-clear-search\\\"]\"},\"targetOuterHTML\":\"<button class=\\\"mb-search-icon-off mb-search-icon-off-close-blue\\\" id=\\\"mb-clear-search\\\"></button>\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-header-search-input-box"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@name=\\\"q\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-header-input-box \\\")]\",\"co\":\"[{\\\"text\\\":\\\"search\\\",\\\"textType\\\":\\\"placeholder\\\"},{\\\"relation\\\":\\\"BEFORE\\\",\\\"tagName\\\":\\\"DIV\\\",\\\"text\\\":\\\" my reading list my activity program manager account settings log out \\\",\\\"textType\\\":\\\"innerText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-search-input-box\\\"]\"},\"targetOuterHTML\":\"<input type=\\\"text\\\" name=\\\"q\\\" autocomplete=\\\"off\\\" style=\\\"\\\" id=\\\"mb-header-search-input-box\\\" value=\\\"leade\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      value      = "Research Methodology for Talent Strategies in the Mid-Market"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on button #mb-search-icon-button"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"at\":\"/descendant::*[@action=\\\"/search/\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"button\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-search-icon-before \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-search-icon-button\\\"]\"},\"targetOuterHTML\":\"<button class=\\\"mb-search-icon-off mb-header-search-icon-before mb-search-icon-off-close\\\" id=\\\"mb-sear\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=leadership\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link \"Research Methodology for ...\""

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][5]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][4]/*[local-name()=\\\"div\\\"][4]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"a\\\"][1]\",\"at\":\"/descendant::*[@href=\\\"/article/research-methodology-for-talent-strategies-in-the-mid-market-2414\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-row-article-title \\\")]/*[local-name()=\\\"a\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-search-row-article-title \\\")]/descendant::*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"research methodology for talent strategies in the mid-market\\\"]]\",\"co\":\"[{\\\"text\\\":\\\"research methodology for talent strategies in the mid-market\\\",\\\"textType\\\":\\\"directText\\\"}]\",\"ro\":\"//*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"research methodology for talent strategies in the mid-market\\\"]]\"},\"targetOuterHTML\":\"<a data-article-id=\\\"2414\\\" href=\\\"/article/research-methodology-for-talent-strategies-in-the-mid-marke\",\"url\":\"https://humancapitalresearch.deloitte.com/search/?q=Research+Methodology+for+Talent+Strategies+in+the+Mid-Market\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-header-apps-dots"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/*[local-name()=\\\"html\\\"]/*[local-name()=\\\"body\\\"]/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" navbar-header \\\")]/*[local-name()=\\\"div\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" navbar-header \\\")]/*[local-name()=\\\"div\\\"][2]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-header-apps-dots\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-header-apps-dots\\\" class=\\\"mb-hide\\\">\\t<div class=\\\"mb-membership-tooltip-container mb-hide\\\">\",\"url\":\"https://humancapitalresearch.deloitte.com/article/research-methodology-for-talent-strategies-in-the-mid-market-2414/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link #mb-header-menu-logout"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][6]/*[local-name()=\\\"a\\\"][1]\",\"at\":\"/*[local-name()=\\\"html\\\"]/*[local-name()=\\\"body\\\"]/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][6]/*[local-name()=\\\"a\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-has-apps \\\")]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][6]/*[local-name()=\\\"a\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-has-apps \\\")]/descendant::*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"log out\\\"]]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-header-menu-logout\\\"]\"},\"targetOuterHTML\":\"<a id=\\\"mb-header-menu-logout\\\" href=\\\"//www.bersin.com/Logout.aspx\\\">Log out</a>\",\"url\":\"https://humancapitalresearch.deloitte.com/article/research-methodology-for-talent-strategies-in-the-mid-market-2414/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  device_ids = ["chrome.laptop_large"]
  locations  = ["aws:us-east-2", "aws:ca-central-1"]
  message    = "[link text](http://google.com/)\n\n@dci-noc@deloitte.com \n@kchugh@deloitte.com \n@kkrishnamurthyred@deloitte.com \n@modubey@deloitte.com \n@nkumarmr@deloitte.com \n@sanddubey@deloitte.com "
  name       = "Bersin Digital/Member Site Prod"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "2"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "900"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://digital.bersin.com"
  }

  status = "live"
  tags   = ["test:browser", "app:membersite", "env:prod"]
  type   = "browser"
}

resource "datadog_synthetics_test" "tfer--synthetics_p9z-002D-bpt-002D-a8c" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=utf-8"
    type     = "header"
  }

  locations = ["aws:ca-central-1", "aws:us-west-2", "aws:us-east-2", "aws:sa-east-1", "aws:us-west-1"]
  message   = "Site Down humancapitalresearch-legacy.deloitte.com\n\n@modubey@deloitte.com @kchugh@deloitte.com @sanddubey@deloitte.com @ruswilson@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor humancapitalresearch-legacy.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalresearch-legacy.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["env:prod", "Legacy", "app:membersite"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_tyb-002D-xka-002D-bzw" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:ca-central-1", "aws:us-west-2", "aws:us-west-1", "aws:sa-east-1", "aws:us-east-2"]
  message   = "Site Down hcrsdashboard.deloitte.com\n\n@kchugh@deloitte.com \n@modubey@deloitte.com \n@ruswilson@deloitte.com \n@sanddubey@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor hcrsdashboard.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://hcrsdashboard.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:membersite", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_w3h-002D-msq-002D-dqs" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  assertion {
    operator = "is"
    property = "location"
    target   = "https://humancapitalresearch.deloitte.com/login/?p=https://humancapitalmetrics.deloitte.com"
    type     = "header"
  }

  locations = ["aws:us-east-2", "aws:sa-east-1", "aws:us-west-1", "aws:ca-central-1", "aws:us-west-2"]
  message   = "Site Down humancapitalmetrics.deloitte.com\n\n@kchugh@deloitte.com \n@modubey@deloitte.com @ruswilson@deloitte.com @sanddubey@deloitte.com  @akachhava@deloitte.com"
  name      = "Monitor humancapitalmetrics.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "60"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalmetrics.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:membersite", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_w7w-002D-y68-002D-w9i" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:us-east-2", "aws:ca-central-1", "aws:us-west-1", "aws:sa-east-1"]
  message   = "Connect me site \"danaher.connectmehr.com\" is down\n\n@kchugh@deloitte.com \n@ruswilson@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor danaher.connectmehr.com"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "true"
    follow_redirects     = "true"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://danaher.connectmehr.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:CONNECTME", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_whd-002D-sxu-002D-5ig" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=utf-8"
    type     = "header"
  }

  assertion {
    operator = "is"
    property = "location"
    target   = "/mer"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:us-west-1", "aws:ca-central-1", "aws:sa-east-1", "aws:us-east-2"]
  message   = "Site down humancapitalresearch-mer.deloitte.com\n\n@modubey@deloitte.com @sanddubey@deloitte.com @kchugh@deloitte.com @ruswilson@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor humancapitalresearch-mer.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalresearch-mer.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:membersite", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_wmu-002D-5f7-002D-ird" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  locations = ["aws:us-west-1", "aws:ca-central-1", "aws:sa-east-1", "aws:us-west-2", "aws:us-east-2"]
  message   = "Site Down workforceinsights.deloitte.com\n\n@kchugh@deloitte.com @ruswilson@deloitte.com @modubey@deloitte.com @sanddubey@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor workforceinsights.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://workforceinsights.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["region:US", "app:RO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_wne-002D-eb5-002D-g76" {
  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-auth-form-email"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"at\":\"/descendant::*[@name=\\\"userName\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"input\\\"][2]\",\"co\":\"[{\\\"text\\\":\\\"business email\\\",\\\"textType\\\":\\\"placeholder\\\"}]\",\"ro\":\"//*[@id=\\\"mb-auth-form-email\\\"]\"},\"targetOuterHTML\":\"<input id=\\\"mb-auth-form-email\\\" name=\\\"userName\\\" spellcheck=\\\"false\\\" autocapitalize=\\\"none\\\" type=\\\"email\\\"\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      value      = "preftest@bersinpreftest.com"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-auth-form-submit"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/descendant::*[@enctype=\\\"application/x-www-form-urlencoded\\\"]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-auth-form-submit\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-auth-form-submit\\\" class=\\\"mb-button\\\"></div>\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-auth-form-password"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@placeholder=\\\"Password\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-auth-form-pw-ctn \\\")][1]/*[local-name()=\\\"input\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-form-min \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-auth-form-pw-ctn \\\")][1]/*[local-name()=\\\"input\\\"][1]\",\"co\":\"[{\\\"text\\\":\\\"password\\\",\\\"textType\\\":\\\"placeholder\\\"}]\",\"ro\":\"//*[@id=\\\"mb-auth-form-password\\\"]\"},\"targetOuterHTML\":\"<input id=\\\"mb-auth-form-password\\\" name=\\\"password\\\" type=\\\"password\\\" placeholder=\\\"Password\\\" autocomplet\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      value      = "Nopassword@321"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-auth-form-submit"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"form\\\"][1]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/descendant::*[@enctype=\\\"application/x-www-form-urlencoded\\\"]/*[local-name()=\\\"div\\\"][7]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button-group \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-button \\\")][1]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-auth-form-submit\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-auth-form-submit\\\" class=\\\"mb-button\\\"></div>\",\"url\":\"https://humancapitalresearch.deloitte.com/login/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div \"Workforce Sensing\""

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][8]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"a\\\"][4]/*[local-name()=\\\"div\\\"][1]\",\"at\":\"/descendant::*[@href=\\\"//workforce-sensing.deloitte.com\\\"][2]/*[local-name()=\\\"div\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-practices \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mbr-clear-floats \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-workforce-sensing \\\")][1]/*[local-name()=\\\"div\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-practices \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mbr-clear-floats \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-workforce-sensing \\\")][1]/*[local-name()=\\\"div\\\"][1]\",\"co\":\"[{\\\"text\\\":\\\"workforce sensing\\\",\\\"textType\\\":\\\"directText\\\"},{\\\"relation\\\":\\\"BEFORE\\\",\\\"tagName\\\":\\\"DIV\\\",\\\"text\\\":\\\" go to hr practice center go to hr practice centerget help finding research\\\",\\\"textType\\\":\\\"innerText\\\"}]\",\"ro\":\"//*[local-name()=\\\"div\\\"][text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"workforce sensing\\\"]]\"},\"targetOuterHTML\":\"<div>Workforce Sensing</div>\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link #mb-header-menu-health"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][3]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"a\\\"][2]\",\"at\":\"/descendant::*[@href=\\\"/Health/\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-menu-items \\\")]/*[local-name()=\\\"a\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-menu-items \\\")]/descendant::*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"health\\\"]]\",\"co\":\"[{\\\"text\\\":\\\"health\\\",\\\"textType\\\":\\\"directText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-menu-health\\\"]\"},\"targetOuterHTML\":\"<a id=\\\"mb-header-menu-health\\\" class=\\\"\\\" href=\\\"/Health/\\\">health</a>\",\"url\":\"https://workforce-sensing.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Test div #mb-topic-latest-handle content"

    params {
      check      = "contains"
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]\",\"at\":\"/*[local-name()=\\\"html\\\"]/*[local-name()=\\\"body\\\"]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-layout-1B-3X \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-auto-handle \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-layout-1B-3X \\\")]/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-module-auto-handle \\\")]\",\"ro\":\"//*[@id=\\\"mb-topic-latest-handle\\\"]\"},\"targetOuterHTML\":\"<div class=\\\" mb-module-auto-handle\\\" id=\\\"mb-topic-latest-handle\\\"><span class=\\\"mb-module-title bp-modu\",\"url\":\"https://workforce-sensing.deloitte.com/Health/\"}"
      value      = "LATEST"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "assertElementContent"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Test text is present on the active page"

    params {
      delay      = "0"
      value      = "READ MORE"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "assertPageContains"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link #mb-header-menu-search"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][3]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"a\\\"][11]\",\"at\":\"/descendant::*[@href=\\\"javascript:;\\\"][1]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mbr-module-resp-9 \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mbr-module-resp-9 \\\")]\",\"ro\":\"//*[@id=\\\"mb-header-menu-search\\\"]\"},\"targetOuterHTML\":\"<a id=\\\"mb-header-menu-search\\\" class=\\\"mbr-module-resp-9\\\" href=\\\"javascript:;\\\"></a>\",\"url\":\"https://workforce-sensing.deloitte.com/Health/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Type text on input #mb-header-search-input-text"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][4]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"input\\\"][1]\",\"at\":\"/descendant::*[@type=\\\"TEXT\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-lightgray \\\")]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-lightgray \\\")]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-header-search-input-text\\\"]\"},\"targetOuterHTML\":\"<input type=\\\"TEXT\\\" class=\\\"mb-lightgray\\\" id=\\\"mb-header-search-input-text\\\">\",\"url\":\"https://workforce-sensing.deloitte.com/Health/\"}"
      value      = "Telecommunication"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "typeText"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Press key 'Enter'"

    params {
      delay      = "0"
      value      = "Enter"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "pressKey"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Test text is present on the active page"

    params {
      delay      = "0"
      value      = "READ MORE"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "assertPageContains"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link #mb-header-hcr"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][3]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][3]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"a\\\"][2]\",\"at\":\"/descendant::*[@href=\\\"//humancapitalresearch.deloitte.com/\\\"][3]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-signin-wrap \\\")]/*[local-name()=\\\"a\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-header-signin-wrap \\\")]/descendant::*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"human capital platform: research \\u0026 sensing\\\"]]\",\"co\":\"[{\\\"text\\\":\\\"human capital platform: research \\u0026 sensing\\\",\\\"textType\\\":\\\"directText\\\"},{\\\"text\\\":\\\"sign in\\\",\\\"textType\\\":\\\"directText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-hcr\\\"]\"},\"targetOuterHTML\":\"<a id=\\\"mb-header-hcr\\\" href=\\\"//humancapitalresearch.deloitte.com/\\\">Human Capital Platform: Research \\u0026\",\"url\":\"https://workforce-sensing.deloitte.com/search/?search=Telecommunication\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on div #mb-header-apps-dots"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]\",\"at\":\"/*[local-name()=\\\"html\\\"]/*[local-name()=\\\"body\\\"]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][2]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" navbar-header \\\")]/*[local-name()=\\\"div\\\"][2]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" navbar-header \\\")]/*[local-name()=\\\"div\\\"][2]\",\"co\":\"\",\"ro\":\"//*[@id=\\\"mb-header-apps-dots\\\"]\"},\"targetOuterHTML\":\"<div id=\\\"mb-header-apps-dots\\\" class=\\\"\\\">\\n\\t  \\t<div class=\\\"mb-membership-tooltip-container mb-hide\\\"><di\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  browser_step {
    allow_failure        = "false"
    force_element_update = "false"
    name                 = "Click on link #mb-header-menu-logout"

    params {
      delay      = "0"
      element    = "{\"multiLocator\":{\"ab\":\"/*[local-name()=\\\"html\\\"][1]/*[local-name()=\\\"body\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"header\\\"][1]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][6]/*[local-name()=\\\"a\\\"][1]\",\"at\":\"/descendant::*[@href=\\\"https://humancapitalresearch-login.deloitte.com/Logout.aspx\\\"]\",\"cl\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-has-apps \\\")]/*[local-name()=\\\"div\\\"][2]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][1]/*[local-name()=\\\"div\\\"][6]/*[local-name()=\\\"a\\\"][1]\",\"clt\":\"/descendant::*[contains(concat(' ', normalize-space(@class), ' '), \\\" mb-has-apps \\\")]/descendant::*[text()[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸŽŠŒ', 'abcdefghijklmnopqrstuvwxyzàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿžšœ')) = \\\"log out\\\"]]\",\"co\":\"[{\\\"text\\\":\\\"log out\\\",\\\"textType\\\":\\\"directText\\\"}]\",\"ro\":\"//*[@id=\\\"mb-header-menu-logout\\\"]\"},\"targetOuterHTML\":\"<a id=\\\"mb-header-menu-logout\\\" href=\\\"https://humancapitalresearch-login.deloitte.com/Logout.aspx\\\">Log\",\"url\":\"https://humancapitalresearch.deloitte.com/\"}"
      with_click = "false"
      x          = "0"
      y          = "0"
    }

    timeout = "0"
    type    = "click"
  }

  device_ids = ["chrome.laptop_large"]
  locations  = ["aws:us-east-2", "aws:us-west-1"]
  message    = "[link text](http://google.com/)\n\n@dci-noc@deloitte.com \n\n@kchugh@deloitte.com \n@kkrishnamurthyred@deloitte.com \n@modubey@deloitte.com \n@nkumarmr@deloitte.com \n@sanddubey@deloitte.com"
  name       = "Bersin WFS PROD"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "2"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "900"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://workforce-sensing.deloitte.com"
  }

  status = "live"
  tags   = ["app:wfs", "test:browser", "env:prod"]
  type   = "browser"
}

resource "datadog_synthetics_test" "tfer--synthetics_xej-002D-nhi-002D-gpz" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-east-2", "aws:us-west-2", "aws:us-west-1", "aws:ca-central-1", "aws:sa-east-1"]
  message   = "Connect me site \"southwest.connectmehr.com\" is down\n\n@kchugh@deloitte.com \n@ruswilson@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor southwest.connectmehr.com"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "true"
    follow_redirects     = "true"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://southwest.connectmehr.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:CONNECTME", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_xuj-002D-vbk-002D-un6" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:ca-central-1", "aws:us-west-1", "aws:us-east-2", "aws:sa-east-1"]
  message   = "Connect me site \"cintas.connectmehr.com\" is down\n\n@kchugh@deloitte.com \n@ruswilson@deloitte.com \n@modubey@deloitte.com \n@sanddubey@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor  cintas.connectmehr.com"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "true"
    follow_redirects     = "true"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://cintas.connectmehr.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:CONNECTME", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_y8s-002D-phn-002D-ke4" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=utf-8"
    type     = "header"
  }

  locations = ["aws:sa-east-1", "aws:us-west-2", "aws:us-east-2", "aws:us-west-1", "aws:ca-central-1"]
  message   = "Site Down -  humancapitalresearch-login.deloitte.com\n\n@kchugh@deloitte.com @modubey@deloitte.com @ruswilson@deloitte.com \n@akachhava@deloitte.com\n"
  name      = "Monitor humancapitalresearch-login.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://humancapitalresearch-login.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["app:membersite", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_ycw-002D-cxr-002D-9f2" {
  assertion {
    operator = "lessThan"
    target   = "3000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "200"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-2", "aws:us-west-1", "aws:sa-east-1", "aws:us-east-2", "aws:ca-central-1"]
  message   = "Site down eu.workforceinsightsopinions.deloitte.com\n\n@modubey@deloitte.com @sanddubey@deloitte.com @kchugh@deloitte.com @ruswilson@deloitte.com @akachhava@deloitte.com"
  name      = "Monitor eu.workforceinsightsopinions.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "2"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://eu.workforceinsightsopinions.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["region:EU", "app:RO", "env:prod"]
  type    = "api"
}

resource "datadog_synthetics_test" "tfer--synthetics_yri-002D-6zy-002D-3r9" {
  assertion {
    operator = "lessThan"
    target   = "2000"
    type     = "responseTime"
  }

  assertion {
    operator = "is"
    target   = "302"
    type     = "statusCode"
  }

  assertion {
    operator = "is"
    property = "content-type"
    target   = "text/html; charset=UTF-8"
    type     = "header"
  }

  locations = ["aws:us-west-1", "aws:ca-central-1", "aws:us-west-2", "aws:us-east-2", "aws:sa-east-1"]
  message   = "WFS is down\n\n@modubey@deloitte.com \n@ruswilson@deloitte.com \n@sanddubey@deloitte.com\n@kchugh@deloitte.com\n@akachhava@deloitte.com"
  name      = "Monitor workforce-sensing.deloitte.com homepage"

  options_list {
    accept_self_signed   = "false"
    allow_insecure       = "false"
    follow_redirects     = "false"
    min_failure_duration = "120"
    min_location_failed  = "5"

    monitor_options {
      renotify_interval = "60"
    }

    monitor_priority = "1"
    no_screenshot    = "false"

    retry {
      count    = "2"
      interval = "200"
    }

    tick_every = "300"
  }

  request_definition {
    dns_server_port         = "0"
    method                  = "GET"
    no_saving_response_body = "false"
    number_of_packets       = "0"
    port                    = "0"
    should_track_hops       = "false"
    timeout                 = "0"
    url                     = "https://workforce-sensing.deloitte.com"
  }

  status  = "live"
  subtype = "http"
  tags    = ["env:prod", "app:wfs"]
  type    = "api"
}
