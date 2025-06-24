module "cloud-storage" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "10.0.1"
  names = var.buckets
  project_id = "sonorous-charge-462106-g6"
  
}