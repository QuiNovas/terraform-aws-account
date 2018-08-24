output "cloudtrail_arn" {
  description = "The Amazon Resource Name of the trail."
  value       = "${module.cloudtrail.cloudtrail_arn}"
}

output "cloudtrail_id" {
  description = "The name of the trail."
  value       = "${module.cloudtrail.cloudtrail_id}"
}

output "cloudtrail_s3_bucket_arn" {
  description = "The ARN of the CloudTrail bucket. Will be of format arn:aws:s3:::bucketname."
  value       = "${module.cloudtrail.s3_bucket_arn}"
}

output "cloudtrail_s3_bucket_id" {
  description = "The name of the CloudTrail bucket."
  value       = "${module.cloudtrail.s3_bucket_id}"
}

output "cloudtrail_sns_arn" {
  description = "The ARN of the CloudTrail SNS topic,"
  value       = "${module.cloudtrail.sns_arn}"
}

output "log_arn" {
  description = "The ARN of the Log bucket. Will be of format arn:aws:s3:::bucketname."
  value       = "${module.log_bucket.arn}"
}

output "log_id" {
  description = "The name of the Log bucket."
  value = "${module.log_bucket.id}"
}
