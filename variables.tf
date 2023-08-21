
## General
variable "location" {
    type        = string
    default     = "eastus"
} 
variable "resource_group_name" {
    type        = string 
    description = "Name of the Resource Group where resources will be deployed"
    default     = "rg-terraform-demo"
}
variable "sc_service_name" {
    type        = string
    description = "Spring Cloud Service Name"
    default     =  "sample-spring-app"
}

variable "app_insights_name" {
    type        = string
    description = "App Insights Name"
    default     =  "app-insights-terraform-demo"
}

variable "sc_cidr" {
    type        = list
    description = "3 CIDR ranges (at least /16) which are used to host the Spring Cloud backend infrastructure, which must not overlap with any existing CIDR ranges in the Subnet (e.g XX.X.X.X/16,XX.X.X.X/16,XX.X.X.X/16)"
    default     = ["10.3.0.0/16", "10.4.0.0/16", "10.5.0.1/16"]
}
variable "tags" {
    type = map
    description = "key=value pairs to be applied as Tags on all resources which support tags"
    default = {
        environment = "Dev"
        BusinesUnit = "Finance"
    }
}




## Existing Infrastructure
variable "azurespringcloudvnetrg" {
    type    = string
    description = "The name of the resource group where the existing VNET resides"
    default = "rg-terraform-demo"
}

variable "vnet_spoke_name" {
     type    = string
    description = "Name of the existing Spoke Virtual Network name(e.g. vnet-spoke)"
    default = "vnet-springapp-terraform-demo"
}
variable "app_subnet_id" {
    type    = string
    description = "Name of the existing SubNet to be used by Spring Cloud App Service (e.g snet-app)"
    default = "snet-apps"
}
variable "service_runtime_subnet_id" {
    type    = string
    description = "Name of the existing SubNet to be used by Spring Cloud runtime Service (e.g snet-runtime)"
    default = "snet-runtime"
}

variable "sc_law_id" {
    type    = string
    description = "Name of the existing Azure Log Analytics workspace to be used for storing diagnostic logs(e.g la-cb5sqq6574o2a)"
    default = "f439bdc4-a8cf-4685-9201-0ab0224a8e9f-rg-terraform-demo-EUS"
}
