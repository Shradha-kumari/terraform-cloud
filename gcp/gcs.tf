module "cloud-storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "10.0.1"
  names = [for bucket in var.buckets :{
    name =bucket.name
  }]
  project_id = var.project_id
  
}