variable "environment" {
  default     = ""
  type        = string
  description = "this is the environment that resources are build for"
}

variable "component" {
  default     = ""
  type        = string
  description = "this is the component we are building for"
}

variable "vault_username" {
  default = ""
  type = string
  description = "the default username for the VAULT ENV vars"
}

variable "vault_password" {
  default = ""
  type = string
  description = "the default password for the VAULT env username"
}

variable "vault_addr" {
  default = ""
  type = string
  description = "the default address for the VAULT ENV vars"
}
