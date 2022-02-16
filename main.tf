module "log_bucket" {
  name_prefix = var.account_name
  tags        = var.tags
  source      = "QuiNovas/log-bucket/aws"
  version     = "4.0.0"
}

module "cloudtrail" {
  account_name = var.account_name
  log_bucket   = module.log_bucket.id
  tags         = var.tags
  source       = "QuiNovas/cloudtrail/aws"
  version      = "3.0.7"
}

module "config" {
  name       = var.account_name
  log_bucket = module.log_bucket.id
  tags       = var.tags
  source     = "QuiNovas/config/aws"
  version    = "4.0.0"
}

module "password_policy" {
  source  = "QuiNovas/password-policy/aws"
  version = "1.0.16"
}

resource "aws_iam_account_alias" "alias" {
  count         = var.account_alias ? 1 : 0
  account_alias = var.account_name
}