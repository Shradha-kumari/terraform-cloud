module "cloud-storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "10.0.1"
  count = legth(var.buckets)>0 ? 1:0
  names = var.buckets
  project_id = var.project_id
  
}