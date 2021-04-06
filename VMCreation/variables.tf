variable "name_winvm" {
  description = "The Name of Virtual Machine"
  type        = string
  default     = "Windowsvm0521"
}
variable "config_vm" {
  description = "The Configuration of Virtual Machine"
  type        = string
  default     = "Standard_D2s_v3"
}
variable "model_vm" {
  description = "The Model Number of Virtual Machine"
  type        = string
  default     = "2019-Datacenter"
}
variable "access_disk" {
  description = "The Access Given for Disk"
  type        = string
  default     = "ReadWrite"
}
variable "storage_type" {
  description = "The Storage Type of Disk"
  type        = string
  default     = "Standard_LRS"
}
variable "userid" {
  description = "The UserID of Virtual Machine"
  type        = string
  default     = "localadmin"
}
variable "password" {
  description = "The Password of Virtual Machine"
  type        = string
  default     = "Pass#1234"
}
variable "tag_projectname_vm"{ 
    default="LEO"
}
variable "tag_environment_vm"{ 
    default="DEV" 
}
variable "tag_department_vm"{ 
    default="DEVOPS" 
}
variable "tag_resource_vm" { 
    default="WindowsVM" 
}


