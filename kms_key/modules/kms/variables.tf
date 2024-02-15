variable "target_service" {
  description = "Service that this KMS is going to be used for"
  type        = string
}

variable "alias_name" {
  description = "Alias to apply to the key"
  type        = string
}
