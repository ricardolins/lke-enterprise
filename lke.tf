locals {
  k8s_version = "v1.31.9+lke7"
}

resource "linode_lke_cluster" "test" {
    label       = "lke-e-cluster"
    region      = "us-mia"
    k8s_version = local.k8s_version
    tags        = ["test"]
    tier = "enterprise"

    control_plane {
      
        acl {
            enabled = true
            addresses {
                ipv4 = ["177.181.5.69/32"]
            }
        }
    }


    vpc_id = linode_vpc.test.id
    subnet_id = linode_vpc_subnet.test.id

    pool {
      type  = "g6-standard-1"
      count = 1
      tags  = ["test"]
    }
   
}