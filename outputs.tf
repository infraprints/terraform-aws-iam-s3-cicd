output "policy_document" {
  description = "The above arguments serialized as a standard JSON policy document."
  value       = "${data.aws_iam_policy_document.s3.json}"
}

output "id" {
  description = "The policy's ID."
  value       = "${data.aws_iam_policy_document.s3.id}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.id) : ""}"
}

output "arn" {
  description = "The ARN assigned by AWS to this policy."
  value       = "${data.aws_iam_policy_document.s3.arn}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.arn) : ""}"
}

output "description" {
  description = "The description of the policy."
  value       = "${data.aws_iam_policy_document.s3.description}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.description) : ""}"
}

output "name" {
  description = "The name of the policy."
  value       = "${data.aws_iam_policy_document.s3.name}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.name) : ""}"
}

output "path" {
  description = "The path of the policy in IAM."
  value       = "${data.aws_iam_policy_document.s3.path}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.path) : ""}"
}

output "policy" {
  description = "The policy document."
  value       = "${data.aws_iam_policy_document.s3.policy}"
  value       = "${var.policy == "true" ? join("", data.aws_iam_policy_document.s3.*.policy) : ""}"
}
