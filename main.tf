provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "default" {
  name                        = var.bucket_name                     # Unique bucket name
  location                    = var.bucket_location                 # Bucket region
  force_destroy               = var.force_destroy                   # Allow deletion even if not empty
  storage_class               = var.storage_class                   # Storage class (e.g. STANDARD, NEARLINE, etc.)
  uniform_bucket_level_access = var.uniform_bucket_level_access     # IAM-style access control

  versioning {
    enabled = var.versioning_enabled                               # Enable object versioning
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 28                                                     # Delete objects older than 30 days
    }
  }

  labels = var.bucket_labels                                       # Add tags/labels
}
