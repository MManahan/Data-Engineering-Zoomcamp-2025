variable "gcs_storage_location" {
  description = "My Google Cloud Storage bucket location"
  type        = string
  default     = "US"
}

variable "credentials" {
  description = "The path to the service account key file"
  type        = string
  default     = "./keys/my-creds.json"

}

variable "gcs_storage_name" {
  description = "My Google Cloud Storage bucket name"
  type        = string
  default     = "dtc-de-course-448403-terra-bucket"
}

variable "project" {
  description = "The Google Cloud project ID"
  type        = string
  default     = "dtc-de-course-448403"
}

variable "region" {
  description = "The Google Cloud region"
  type        = string
  default     = "us-east1"

}

