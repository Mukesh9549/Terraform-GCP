project_id                  = "my-gcp-project-id"
region                      = "us-central1"
bucket_name                 = "my-unique-bucket-123"
bucket_location             = "US"
storage_class               = "STANDARD"
versioning_enabled          = true
uniform_bucket_level_access = true
force_destroy               = true
bucket_labels = {
  environment = "dev"
  owner       = "devops"
}
