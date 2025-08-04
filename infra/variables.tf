variable "raw_bucket_name" {
  type        = string
  description = "Name of the raw data bucket"
}

variable "checkpoint_bucket_name" {
  type        = string
  description = "Name of the checkpoint bucket"
}

variable "databricks_account_id" {
  type        = string
  description = "Databricks AWS Account ID"
}

variable "databricks_external_id" {
  type        = string
  description = "External ID for Databricks (CE uses placeholder)"
}
