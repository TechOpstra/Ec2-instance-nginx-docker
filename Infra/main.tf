module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}

module "ec2" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id = module.vpc.public_subnets[0]
  security_group_id = module.vpc.security_group_id
}
