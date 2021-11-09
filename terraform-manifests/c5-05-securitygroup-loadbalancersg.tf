module "loadbalancer_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"

  name = "${local.name}-loadbalancer-sg"
  description = "Security Group with HTTP open for entire Internet (IPv4 CIDR), egress ports are all world open"

  vpc_id = module.vpc.vpc_id

  ingress_rules = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules = ["all-all"]
  tags = local.common_tags

  ingress_with_cidr_blocks = [
  {
      from_port   = 81
      to_port     = 81
      protocol    = 6
      description = "Allow Port 81 from the Internet"
      cidr_blocks = "0.0.0.0/0"
  },
  ]
}