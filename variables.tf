variable "account_name" {
  description = "The name of the account. Used as a prefix for naming resources"
  type        = string
}

variable "account_alias" {
  description = "Creates a preferred alias using account_name"
  default     = true
  type        = bool
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resources"
  type        = map(string)
  default     = {}
}