module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.4"

    project_id   = var.project
    network_name = "gaurav-network"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "gaurav-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        },
        {
            subnet_name               = "subnet-03"
            subnet_ip                 = "10.10.30.0/24"
            subnet_region             = "us-west1"
            subnet_flow_logs          = "true"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
            subnet_flow_logs_sampling = 0.7
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        }
    ]
}
