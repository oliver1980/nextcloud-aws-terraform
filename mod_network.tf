module "network" {
  source      = "git::https://github.com/oliver1980/terraform-aws-network"
  vpc_name    = "${var.name}"
  vpc_network = "10.161.32.0/21"
  aws_region  = "${var.aws_region}"
  create_nat  = false
  dns_hostnames = true
}
