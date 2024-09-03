variable "resource_group_name" {
  type        = string
  default     = ""
  description = "Resource group name of the SQL server to be provisioned."
}

variable "resource_group_location" {
  type        = string
  default     = "useast"
  description = "Resource group location of the SQL server to be provisioned."
}

variable "os_type" {
  type        = string
  default     = "Linux"
  description = "Service plan OS type name."
}

variable "sku_name" {
  type        = string
  default     = "Y1"
  description = "Service plan sku."
}

variable "worker_count" {
  type        = number
  default     = 1
  description = "Service plan initial workers count."
}

variable "worker_count_maximum" {
  type        = number
  default     = 5
  description = "Service plan maximum workers count."
}

variable "autoscale_enable" {
  type        = bool
  default     = false
  description = "Create autoscale."
}

variable "notification_emails" {
  type        = list(string)
  default     = []
  description = "Autoscale notification mails."
}

variable "divide_by_instance_count" {
  type        = bool
  default     = true
  description = "Autoscale based on instance count."
}

variable "memory_percentage_max_threshold" {
  type        = number
  default     = 70
  description = "Service plan maximum threshold memory %."
}

variable "cpu_percentage_max_threshold" {
  type        = number
  default     = 70
  description = "Service plan maximum threshold CPU %."
}

variable "memory_percentage_min_threshold" {
  type        = number
  default     = 35
  description = "Service plan minimum threshold memory %."
}

variable "cpu_percentage_min_threshold" {
  type        = number
  default     = 35
  description = "Service plan minimum threshold CPU %."
}


# COMMON VARIABLES
variable "name" {
  type        = string
  description = "The name which should be used for this Service plan name."
}
variable "location" {
  type        = string
  description = "The azure region where the Service plan should exist"
}

variable "environment" {
  type        = string
  description = "Tags which should be assigned to the Service plan"
}

variable "landingzone" {
  type        = string
  description = "Zone which should be assigned to the Service plan"
}

variable "product" {
  type        = string
  description = "Product which should be assigned to the Service plan"
}
variable "use_suffix" {
  description = "Controls if suffix should be append at name"
  type        = bool
  default     = false
}
variable "suffix" {
  type        = string
  default     = "001"
  description = "The suffix which should be used for this Service plan."
}
variable "tags" {
  type        = map(any)
  default     = {}
  description = "The tag which should be used for this Service plan."
}
