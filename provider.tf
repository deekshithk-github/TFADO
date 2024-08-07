provider "azurerm"{
    features{}
}

terraform {
  backend "azurerm" {    
    # resource_group_name  = "StorageAccount-ResourceGroup"                     
    storage_account_name = "pipesta"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "container1"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    access_key           = "uyk07G5fjeCLJldb1QshLy5PnkBwapl5M3ncfSqPU7H6uBWTnoZw2tVSDz2yZ8y4nmESZfG/PUof+AStQ0caHA=="  # Can also be set via `ARM_ACCESS_KEY` environment variable.
  }
}
