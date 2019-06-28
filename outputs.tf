output "cloudtrail_arn" {
  description = "The Amazon Resource Name of the trail."
  value       = module.cloudtrail.cloudtrail_arn
}

output "cloudtrail_id" {
  description = "The name of the trail."
  value       = module.cloudtrail.cloudtrail_id
}

output "cloudtrail_s3_bucket_arn" {
  description = "The ARN of the CloudTrail bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.cloudtrail.s3_bucket_arn
}

output "cloudtrail_s3_bucket_id" {
  description = "The name of the CloudTrail bucket."
  value       = module.cloudtrail.s3_bucket_id
}

output "cloudtrail_sns_arn" {
  description = "The ARN of the CloudTrail SNS topic,"
  value       = module.cloudtrail.sns_arn
}

output "config_bucket_arn" {
  description = "The bucket ARN that config writes output to."
  value       = module.config.bucket_arn
}

output "config_bucket_id" {
  description = "The bucket name that config writes output to."
  value       = module.config.bucket
}

output "config_delivery_channel_id" {
  description = "The name of the config delivery channel."
  value       = module.config.delivery_channel_id
}

output "config_recorder_id" {
  description = "Name of the config recorder."
  value       = module.config.recorder_id
}

output "config_rule_arns" {
  description = "The ARNs of the config rules."
  value       = module.config.rule_arns
}

output "config_rule_ids" {
  description = "The IDs of the config rules."
  value       = module.config.rule_ids
}

output "config_topic_arn" {
  description = "The ARN of the SNS topic AWS Config writes events to."
  value       = module.config.topic_arn
}

output "log_bucket_arn" {
  description = "The ARN of the Log bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.log_bucket.arn
}

output "log_bucket_id" {
  description = "The name of the Log bucket."
  value       = module.log_bucket.id
}

