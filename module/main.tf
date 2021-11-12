variable "gitrepos" {
    type    = list
    default = ["devopsschoolx-45435343", "devopsschooly-2", "devopsschoolz-3"]
    description = "This is for demo of list variable"
}
resource "github_repository" "repo1" {
  name = "${var.gitrepos[0]}"
  description = "My awesome codebase"
  visibility = "public"
}

variable "reponame" {
  type = string
  description = "This is for demo of string variable"
  default = "RRRRRRRRRRR"
}

resource "azurerm_resource_group" "example" {
  name     = "my-resources-raju"
  location = "West Europe"
}

module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  subnet_service_endpoints = {
    "subnet1" : ["Microsoft.Sql"], 
    "subnet2" : ["Microsoft.Sql"],
    "subnet3" : ["Microsoft.Sql"]
  }

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.example]
}

module "samplemodule" {
  source = "./module1"
  reponame1 = var.reponame
}



