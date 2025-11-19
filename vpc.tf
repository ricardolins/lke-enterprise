resource "linode_vpc" "test" {
  label       = "test-vpc"
  region      = "us-mia"
  description = "Syonet"
}

resource "linode_vpc_subnet" "test" {
  vpc_id = linode_vpc.test.id
  label  = "test-subnet"
  ipv4   = "10.0.0.0/14"
}   