provider "aws" {
    region = "us-east-1"
  
}

module "SG" {
  source      =  "git@github.com:Accenture-Dev-private/module_SG?ref=2ingress_1egress"
  name        =  "22 and 80"
  description =  "22 and 80"
  vpc_id      =  "vpc-0351646fc3e05b6c3"

### ingress1

  ingress_description1 = "port 22 for ip"
  from_port_ingress1   = 22
  to_port_ingress1     = 22
  protocol_ingress1    = "tcp"
  cidr_blocks_ingress1 = ["0.0.0.0/0"]

### ingress2

  ingress_description2 = "port 80 for ip"
  from_port_ingress2   = 80
  to_port_ingress2     = 80
  protocol_ingress2    = "tcp"
  cidr_blocks_ingress2 = ["0.0.0.0/0"]

### egress

  from_port_egress        = 0
  to_port_egress          = 0
  protocol_egress         = "-1"
  cidr_blocks_egress      = ["0.0.0.0/0"]
#  ipv6_cidr_blocks = ["::/0"]

}