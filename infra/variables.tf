variable "tenancy_id" {
  description = "The ID of the tenancy (same with the root compartment ID)"
  type        = string
}

variable "compartment_name" {
  description = "Name of the compartment where to create all resources"
  type        = string
  default     = "freecloud"
}

variable "compartment_description" {
  description = "Description of the compartment where to create all resources"
  type        = string
  default     = "freecloud"
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    project = "freecloud"
  }
}
