resource "aws_iam_policy" "s3" {
  count       = "${var.policy == "" ? 0 : 1}"
  name        = "${var.name}"
  description = "${var.description}"
  path        = "${var.path}"
  policy      = "${data.aws_iam_policy_document.s3.json}"
}

data "aws_iam_policy_document" "s3" {
  statement {
    sid       = "ListBucket"
    effect    = "Allow"
    actions   = ["s3:ListBucket"]
    resources = ["${var.bucket_arn}"]
  }

  statement {
    sid       = "ReadWriteBucket"
    effect    = "Allow"
    actions   = ["s3:DeleteObject", "s3:GetObject", "s3:PutObject"]
    resources = ["${var.bucket_arn}/${var.path}"]
  }
}
