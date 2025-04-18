variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type        = string
  description = "GCP Region"
  default     = "us-central1"
}

variable "bucket_name" {
  type        = string
  description = "Unique name for the bucket"
}

variable "bucket_location" {
  type        = string
  description = "Location of the bucket"
  default     = "US"
}

variable "storage_class" {
  type        = string
  default     = "STANDARD"
  description = "Storage class for the bucket"
}

variable "versioning_enabled" {
  type        = bool
  default     = false
  description = "Enable versioning for the bucket"
}

variable "uniform_bucket_level_access" {
  type        = bool
  default     = true
  description = "Use uniform access control"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Force destroy bucket (even if non-empty)"
}

variable "bucket_labels" {
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "devops"
  }
  description = "Labels for the bucket"
}
