/*module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = var.project_id
  for_each                   = var.cluster
  name                       = each.value["name"]
  region                     = "us-central1"
  zones                      = ["us-central1-a", "us-central1-b", "us-central1-f"]
  network                    = each.value["network"]
  subnetwork                 = each.value["subnetwork"]
  ip_range_pods              = each.value["ip_range_pods"]
  ip_range_services          = each.value ["ip_range_services"]
   node_pools                =  each.value["node_pools"]
}*/