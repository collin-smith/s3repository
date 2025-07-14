#AWS Policies to determine permission sets for AWS IAM Roles
#A policy is an object in AWS that, when associated with an identity or resource, defines their permissions. 
#AWS evaluates these policies when an IAM principal (user or role) makes a request.

data "aws_caller_identity" "current" {}

#S3 Bucket Policy
resource "aws_iam_policy" "iampolicy_s3client" {
  name        = "iampolicy_s3client"
  description = "IAM policy for Lambda to access the s3 client"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
                "*"
        ]
        Effect   = "Allow"
        Resource = [
                "arn:aws:s3:::${var.bucket_name}",
                "arn:aws:s3:::${var.bucket_name}/*"
            ]
      }
    ]
  })

  tags = merge(
    var.common_tags,
    {
      Name = "Policy to allow access to the S3 bucket"
    }
  )
}
