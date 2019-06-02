output "policy_document" {
  description = "The above arguments serialized as a standard JSON policy document."
  value       = data.aws_iam_policy_document.s3.json
}

output "id" {
  description = "The policy's ID."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.id) : ""
}

output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.arn) : ""
}

output "description" {
  description = "The description of the policy."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.description) : ""
}

output "name" {
  description = "The name of the policy."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.name) : ""
}

output "path" {
  description = "The path of the policy in IAM."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.path) : ""
}

output "policy" {
  description = "The policy document."
  value       = var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.policy) : ""
}

