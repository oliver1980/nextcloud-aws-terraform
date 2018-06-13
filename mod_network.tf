module "region" {
  source      = "git::https://github.com/zoitech/terraform-aws-network.git"
  vpc_name    = "${var.name}"
  vpc_network = "10.161.32.0/21"
  aws_region  = "${var.aws_region}"
  create_nat  = false
}
