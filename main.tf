module "compute_instance" {
  source              = "../../../modules/compute_instance"
  region              = var.region
  zone                = var.zone
  subnetwork          = var.subnetwork
  num_instances       = var.num_instances
  hostname            = "instance-simple"
  deletion_protection = false

  access_config = [{
    nat_ip       = var.nat_ip
    network_tier = var.network_tier
  }, ]
}
