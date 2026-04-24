variable "CLIENT_SECRET" {
  description = "The client secret for authentication."
  type        = string
}
variable "TENANT_ID" {
  description = "The tenant ID for authentication."
  type        = string
}
variable "SUBSCRIPTION_ID" {
  description = "The subscription ID for authentication."
  type        = string
}
variable "CLIENT_ID" {
  description = "The client ID for authentication."
  type        = string
}
variable "AKS_CLUSTER_NAME" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "RESOURCE_GROUP_NAME" {
  description = "The name of the resource group."
  type        = string
}