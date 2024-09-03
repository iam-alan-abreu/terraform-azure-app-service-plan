resource "azurerm_monitor_autoscale_setting" "default_autoscale" {
  count               = var.autoscale_enable ? 1 : 0
  name                = "aspa-${local.suffix_name}"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  target_resource_id  = azurerm_service_plan.default_plan.id

  profile {
    name = "defaultProfile"

    capacity {
      default = var.worker_count
      minimum = var.worker_count
      maximum = var.worker_count_maximum
    }

    # CPU rules
    rule {
      metric_trigger {
        metric_name              = "CpuPercentage"
        metric_resource_id       = azurerm_service_plan.default_plan.id
        time_grain               = "PT1M"
        statistic                = "Average"
        time_window              = "PT5M"
        time_aggregation         = "Average"
        operator                 = "GreaterThan"
        threshold                = var.cpu_percentage_max_threshold
        divide_by_instance_count = var.divide_by_instance_count
      }

      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }

    rule {
      metric_trigger {
        metric_name              = "CpuPercentage"
        metric_resource_id       = azurerm_service_plan.default_plan.id
        time_grain               = "PT1M"
        statistic                = "Average"
        time_window              = "PT5M"
        time_aggregation         = "Average"
        operator                 = "LessThan"
        threshold                = var.cpu_percentage_min_threshold
        divide_by_instance_count = var.divide_by_instance_count
      }

      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }

    # Memory Rules
    rule {
      metric_trigger {
        metric_name              = "MemoryPercentage"
        metric_resource_id       = azurerm_service_plan.default_plan.id
        time_grain               = "PT1M"
        statistic                = "Average"
        time_window              = "PT5M"
        time_aggregation         = "Average"
        operator                 = "GreaterThan"
        threshold                = var.memory_percentage_max_threshold
        divide_by_instance_count = var.divide_by_instance_count
      }

      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }

    rule {
      metric_trigger {
        metric_name              = "MemoryPercentage"
        metric_resource_id       = azurerm_service_plan.default_plan.id
        time_grain               = "PT1M"
        statistic                = "Average"
        time_window              = "PT5M"
        time_aggregation         = "Average"
        operator                 = "LessThan"
        threshold                = var.memory_percentage_min_threshold
        divide_by_instance_count = var.divide_by_instance_count
      }

      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "1"
        cooldown  = "PT1M"
      }
    }
  }

  notification {
    email {
      send_to_subscription_administrator    = true
      send_to_subscription_co_administrator = true
      custom_emails                         = var.notification_emails
    }
  }
}
