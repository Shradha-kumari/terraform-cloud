buckets= ["ishu-bucket7789"]
project_id ="sonorous-charge-462106-g6"

cluster={
    demo-cluster={
        name             = "demo-cluster"
        network           = "default"
        subnetwork        = "default"
        network           = "gke-vpc"
        subnetwork        = "gke-subnet"
        ip_range_pods     = "gke-pods"
        ip_range_services = "gke-services"
         node_pools = [
            {
            name       = "default-node-pool"
            machine_type = "e2-medium"
            min_count  = 1
            max_count  = 2
            auto_upgrade = true
            auto_repair  = true
            },
        ]
    }
}