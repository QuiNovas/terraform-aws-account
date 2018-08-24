module "log_bucket" {
  name_prefix = "${var.account_name}"
  source      = "QuiNovas/log-bucket/aws"
  version     = "1.0.16"
}

module "cloudtrail" {
  account_name  = "${var.account_name}"
  log_bucket    = "${module.log_bucket.id}"
  source        = "QuiNovas/cloudtrail/aws"
  version       = "1.0.18"
}

module "config" {
  account_name  = "${var.account_name}"
  log_bucket    = "${module.log_bucket.id}"
  source        = "QuiNovas/config/aws"
  version       = "1.0.16"
}

module "password_policy" {
  source  = "QuiNovas/password-policy/aws"
  version = "1.0.16"
}
