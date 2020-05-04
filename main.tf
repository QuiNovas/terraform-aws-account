module "log_bucket" {
  name_prefix = var.account_name
  source      = "QuiNovas/log-bucket/aws"
  version     = "3.0.0"
}

module "cloudtrail" {
  account_name = var.account_name
  log_bucket   = module.log_bucket.id
  source       = "QuiNovas/cloudtrail/aws"
  version      = "3.0.1"
}

module "config" {
  name       = var.account_name
  log_bucket = module.log_bucket.id
  source     = "QuiNovas/config/aws"
  version    = "3.0.1"
}

module "password_policy" {
  source  = "QuiNovas/password-policy/aws"
  version = "1.0.16"
}

resource "aws_iam_account_alias" "alias" {
  account_alias = var.account_name
}