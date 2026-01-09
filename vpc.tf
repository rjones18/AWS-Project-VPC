module "vpc" {
  source = "git::https://github.com/rjones18/AWS-VPC-MODULE.git?ref=v1.0.0"

  # VPC settings
  vpc_name    = "project-vpc"
  vpc_cidr    = "10.0.0.0/16"

  # Subnets
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
  availability_zones   = ["us-west-2a", "us-west-2b"]

  # Gateways
  enable_nat_gateway     = true
  single_nat_gateway     = true
  enable_internet_gateway = true

  tags = {
    Environment = "dev"
    Project     = "my-project"
  }
}