variable "name" {
  description = "ECS / EFS Evaluation"
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "public-subnet-a" {}
variable "public-subnet-b" {}

variable "vpc-id" {}
