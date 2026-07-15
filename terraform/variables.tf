variable "project_id" {
  description = "GCP project ID where the log bucket will be created"
  type        = string
}

variable "location" {
  description = "Location of the log bucket"
  type        = string
  default     = "global"
}

variable "bucket_id" {
  description = "ID of the log bucket (use a custom ID, or _Default / _Required to manage built-in buckets)"
  type        = string
  default     = "app-logs"
}

variable "retention_days" {
  description = "Number of days to retain logs before automatic deletion (minimum 1)"
  type        = number
  default     = 1
}

variable "description" {
  description = "Optional description for the log bucket"
  type        = string
  default     = "Application log storage"
}