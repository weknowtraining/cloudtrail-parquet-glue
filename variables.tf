variable "cloudtrail_s3_bucket" {
  type        = string
  description = "S3 bucket used for CloudTrail logs"
}

variable "etl_script_s3_bucket" {
  type        = string
  description = "S3 bucket used for script for Glue ETL job"
}

variable "parquet_s3_bucket" {
  type        = string
  description = "S3 bucket used for results of Glue ETL job"
}

variable "temp_s3_bucket" {
  type        = string
  description = "Bucket used for temporary files of Glue ETL job"
}

variable "glue_database" {
  type        = string
  description = "Glue database to use for CloudTrail crawler"
  default     = "cloudtrail"
}

variable "schedule" {
  type        = string
  description = "The schedule to run workflow on"
  default     = "cron(10 6 * * ? *)"
}

variable "job_bookmark_option" {
  description = "The bookmark option for the Glue job (see https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)"
  default     = "job-bookmark-enable"
}
