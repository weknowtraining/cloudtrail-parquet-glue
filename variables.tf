variable "region" {
  description = "AWS region for deploying Glue infrastructure"
  default     = "us-east-1"
}

variable "aws_account_id" {
  description = "AWS account for deploying Glue infrastructure"
  default     = "12345678901"
}

variable "cloudtrail_s3_bucket" {
  type        = string
  description = "S3 bucket used for CloudTrail logs"
  default     = "s3://account-logs-cloudtrail"
}

variable "etl_script_s3_bucket" {
  type        = string
  description = "S3 bucket used for script for Glue ETL job"
  default     = "s3://account-logs-release"
}

variable "parquet_s3_bucket" {
  type        = string
  description = "S3 bucket used for results of Glue ETL job"
  default     = "s3://account-logs-parquet"
}

variable "temp_s3_bucket" {
  type        = string
  description = "Bucket used for temporary files of Glue ETL job"
  default     = "s3://account-logs-temp"
}

variable "glue_database" {
  type        = string
  description = "Glue database to use for CloudTrail crawler"
  default     = "cloudtrail"
}

variable "schedule" {
  type        = string
  description = "The schedule to run workflow on"
  default     = "cron(10 12 * * ? *)"
}

variable "job_bookmark_option" {
  description = "The bookmark option for the Glue job (see https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)"
  default     = "job-bookmark-enable"
}
