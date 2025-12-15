resource "azurerm_resource_group" "grb" {
  for_each = var.names
  name     = each.value.rgkanaam
  location = each.value.location
}

# Command for deleting specific resource:- terraform destroy -target='azurerm_resource_group.grb[\"rg1\"]'