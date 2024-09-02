terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = ">= 2.9.0"
    }
  }
}
// Step 1: Create a stack
provider "grafana" {
  alias = "cloud"
  url   = "https://awsmaritz.grafana.net"
  auth  = "glsa_izwtrFsYscHDx5daB4uQBO5umRuh7S3u_79b02187"
//  cloud_access_policy_token = "glc_eyJvIjoiNjM3MTg5IiwibiI6InRlcnJhZm9ybS10ZXJyYWZvcm0iLCJrIjoiTDFoOHZjM3FwdkxjOEU2YTE3NjNnVjl6IiwibSI6eyJyIjoicHJvZC1hdS1zb3V0aGVhc3QtMSJ9fQ=="
}


//resource "grafana_cloud_stack" "my_stack" {
//  provider = grafana.cloud
//
//  name        = "Terraform Stack"
//  slug        = "seanmaritz"
//  region_slug = "au" # Example "us","eu" etc
//}

// Step 2: Create a service account and key for the stack
//resource "grafana_cloud_stack_service_account" "cloud_sa" {
//  provider   = grafana.cloud
//  stack_slug = grafana_cloud_stack.my_stack.slug
//
//  name        = "Terraform Service Account"
//  role        = "Admin"
//  is_disabled = false
//}
//
//resource "grafana_cloud_stack_service_account_token" "cloud_sa" {
//  provider   = grafana.cloud
//  stack_slug = grafana_cloud_stack.my_stack.slug
//
//  name               = "terraform serviceaccount key"
//  service_account_id = grafana_cloud_stack_service_account.cloud_sa.id
//}

// Step 3: Create resources within the stack
//provider "grafana" {
//  alias = "my_stack"
//
//  url  = grafana_cloud_stack.my_stack.url
//  auth = grafana_cloud_stack_service_account_token.cloud_sa.key
//}
resource "grafana_folder" "my_folder" {
  provider = grafana.cloud

  title = "Test Folder"
}
