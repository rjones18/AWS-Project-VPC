module "vpc" {
  source = "git::https://github.com/rjones18/AWS-VPC-MODULE.git?ref=v1.0.0"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs = {
    "us-east-1a" = "10.0.1.0/24"
    "us-east-1b" = "10.0.2.0/24"
  }

  private_subnet_cidrs = {
    "us-east-1a" = "10.0.101.0/24"
    "us-east-1b" = "10.0.102.0/24"
  }

  enable_nat_gateway = true

  tags = {
    Project = "platform"
    Env     = "dev"
    Owner   = "reggie"
    Name = "project-vpc"
  }
}