module "log_bucket" {
  name_prefix = "${var.account_name}"
  source      = "QuiNovas/log-bucket/aws"
  version     = "2.0.0"
}

module "cloudtrail" {
  account_name  = "${var.account_name}"
  log_bucket    = "${module.log_bucket.id}"
  source        = "QuiNovas/cloudtrail/aws"
  version       = "2.0.0"
}

module "config" {
  name        = "${var.account_name}"
  log_bucket  = "${module.log_bucket.id}"
  source      = "QuiNovas/config/aws"
  version     = "2.1.0"
}

module "password_policy" {
  source  = "QuiNovas/password-policy/aws"
  version = "1.0.16"
}
