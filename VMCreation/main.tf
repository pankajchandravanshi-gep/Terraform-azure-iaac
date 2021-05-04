#Define providers used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.52.0"
    }
  }
  backend "azurerm" {
    storage_account_name  = "#{tfstorageaccountname}#"
    container_name        = "#{tfcontainername}#"
    access_key            = "#{tfaccesskey}#"
    key                   = "azure_vm.tfstate"
  }
 }

provider "azurerm" {
  features {}
}

#module "azurevm_DEVOPS-5650"{
#source		= "../../modules/azure_vm"
#Resource section

resource "azurerm_virtual_machine" "azurevm"  {
name                  = var.name_winvm
location              = azurerm_resource_group.rg.location
resource_group_name   = azurerm_resource_group.rg.name
network_interface_ids = [azurerm_network_interface.nic.id]
vm_size               = var.config_vm
  
  storage_image_reference {
    
    publisher   = "MicrosoftWindowsServer"
    offer       = "WindowsServer" 
    sku         = var.model_vm
    version     = "latest"
    } 
  
    storage_os_disk { 
    name              = "D-Drive"
    caching           =  var.access_disk    
    create_option     = "FromImage"
    managed_disk_type =  var.storage_type
    }
  
    os_profile {
    computer_name  = "WINDOWSER062021"
    admin_username =  var.userid
    admin_password =  var.password
  }

  os_profile_windows_config {
    provision_vm_agent = true
  }
  
     tags = {
    projectName  = var.tag_projectname_vm
    environment  = var.tag_environment_vm
    documentTeam = var.tag_department_vm
    resourceType = var.tag_resource_vm
  }
}



