# binarylane api key or login password (key preferred)
variable "openstack_password" {}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "magnetoex@gmail.com"
  tenant_name = "binarylane"
  password    = "${var.openstack_password}"
  auth_url    = "https://api.binarylane.com.au/v2.0"
  #region      = "RegionOne"
}

resource "openstack_compute_instance_v2" "host_mel_1" {
  name            = "host_mel_1"
  image_id        = "9310ba82-31c5-4cd3-add3-d7dfc6fc86b2"
  flavor_id       = "plan-768"
  #key_pair        = "my_key_pair_name"
  #security_groups = ["default"]

#  network {
#    name = "vpc_melb"
#  }
}

resource "openstack_compute_instance_v2" "host_mel_2" {
  name            = "host_mel_2"
  image_id        = "9310ba82-31c5-4cd3-add3-d7dfc6fc86b2"
  flavor_id       = "plan-768"
  #key_pair        = "my_key_pair_name"
  #security_groups = ["default"]

  network {
    name = "vpc_mel"
  }
}