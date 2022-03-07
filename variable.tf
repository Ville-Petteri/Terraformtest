variable "subscription_id" {}
variable "tenant_id" {}
variable "resource_group_name" {
  default = "villepetteriterraform"
}
variable "storageaccount_name" {
    default ="villepetteristorage2"
}
variable "container_name" {
    default ="villepettericontainer2"
}
variable "nic_name" {
    default ="vnet1_nic"
}
variable "vm_name" {
    default ="LS01"
}
variable "vm_password" {}