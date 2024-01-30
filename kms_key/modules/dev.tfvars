aws_region       = "ca-central-1"
environment      = "dev"

keys_to_create = {
    "ebs" = {
        alias_name = "kms-dev-ebs"
    }
    "efs" = {}
}