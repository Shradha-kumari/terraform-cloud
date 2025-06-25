buckets= ["ishu-bucket7789"]
project_id ="sonorous-charge-462106-g6"

cluster={
    demo-cluster={
        name             = "demo-cluster"
        network           = "default"
        subnetwork        = "default"
        ip_range_pods     = "dev-pods"
        ip_range_services = "dev-services"
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