resource "aws_kms_key_policy" "cloudwatch_policy" {
  count = var.target_service == "CloudWatch" ? 1 : 0

  key_id = aws_kms_key.this.id
  policy = jsonencode({
    Id = "Policy"
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        }
        Resource = "*"
        Sid      = "Enable root access"
      },
      {
        Action = [
          "kms:Encrypt*",
          "kms:Decrypt*",
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:Describe*"
        ]
        Effect = "Allow"
        Principal = {
          Service = "logs.${var.aws_region}.amazonaws.com"
        }

        Condition = {
          ArnEquals = {
            "kms:EncryptionContext:aws:logs:arn" = "arn:aws:logs:${var.aws_region}:${data.aws_caller_identity.current.account_id}:log-group:*"
          }
        }

        Resource = "*"
        Sid      = "Allow autoscaling to use the EBS custom KMS key"
      },
    ]
    Version = "2012-10-17"
  })
}
