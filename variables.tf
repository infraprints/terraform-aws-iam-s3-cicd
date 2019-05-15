variable "name" {
  type        = "string"
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = ""
}

variable "policy" {
  type        = "string"
  description = "Determines if the IAM Policy will be created."
  default     = true
}

variable "description" {
  type        = "string"
  description = "Description of the IAM policy."
  default     = "Allows deployment of build artifacts to S3."
}

variable "path" {
  type        = "string"
  description = "Path in which to create the policy. See IAM Identifiers for more information."
  default     = "/ci"
}

variable "bucket_arn" {
  type        = "list"
  description = "A list of S3 bucket ARNs that this statement applies to."
}
