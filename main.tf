module "log_bucket" {
  name_prefix = var.account_name
  source      = "QuiNovas/log-bucket/aws"
  version     = "3.0.4"
}

module "cloudtrail" {
  account_name = var.account_name
  log_bucket   = module.log_bucket.id
  source       = "QuiNovas/cloudtrail/aws"
  version      = "3.0.6"
}

module "config" {
  name       = var.account_name
  log_bucket = module.log_bucket.id
  source     = "QuiNovas/config/aws"
  version    = "3.0.4"
}

module "password_policy" {
  source  = "QuiNovas/password-policy/aws"
  version = "1.0.16"
}

resource "aws_iam_account_alias" "alias" {
  count         = var.account_alias ? 1 : 0
  account_alias = var.account_name
}