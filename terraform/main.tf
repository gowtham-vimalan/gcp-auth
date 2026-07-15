resource "google_logging_project_bucket_config" "log_storage" {
  project        = var.project_id
  location       = var.location
  bucket_id      = var.bucket_id
  retention_days = var.retention_days
  description    = var.description
}