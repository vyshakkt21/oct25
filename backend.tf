terraform {
  backend "azurerm" {
    storage_account_name = "vysstr5353"  # Azure Storage Account name
    container_name       = "tfstate"                # Blob container name
    key                  = "terraform.tfstate"      # State file name (key)
    resource_group_name  = "strrg"        # Resource group name
  }
} 
