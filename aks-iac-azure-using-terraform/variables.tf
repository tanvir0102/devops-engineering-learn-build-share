variable "subscription_id" {
  default = "**********************************"
}

variable "client_id" {
  default = "**********************************"
}

variable "client_secret" {
  default = "**********************************"
}

variable "tenant_id" {
  default = "**********************************"
}

variable "resource_group_name" {
  default = "devops-lab-rg"
}

variable "agent_count" {
  default = 3
}

variable "dns_prefix" {
  default = "ak8s"
}

variable "cluster_name" {
  default = "ak8s"
}

variable "location" {
  default = "southeastasia"
}

variable "log_analytics_workspace_name" {
  default = "devopslabLogAnalyticsWorkspaceName"
}

variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}
