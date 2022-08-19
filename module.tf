module "vpc" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-vpc.git?ref=v1.0.0"
  
  # These are repeated
  name               = var.vname
  cidr               = var.cidr
  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway  # I might not want this in some environments....
  
}

module "eks" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-eks.git?ref=v1.0.0"
  # Use some outputs from above
}

# I could also have the Flux and Grafana Provider....