resource "google_logging_project_bucket_config" "log_storage" {
  project        = var.project_id
  location       = var.location
  bucket_id      = var.bucket_id
  retention_days = var.retention_days
  description    = var.description
}

resource "google_logging_linked_dataset" "log_analytics" {
  link_id     = "app_logs_view"  # becomes the BigQuery dataset ID
  bucket      = google_logging_project_bucket_config.log_storage.id
  description = "BigQuery linked dataset for app logs"
}