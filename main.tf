
variable "subscription_id" {}
variable "name" {}

provider "azurerm" {

 version = "=1.44.0"

 subscription_id = "${var.subscription_id}"
}

resource "azurerm_resource_group" "resource_gp"{
name = "${var.name}"
location = "West Europe"
tags = {
Owner = "viswa"
}
}
