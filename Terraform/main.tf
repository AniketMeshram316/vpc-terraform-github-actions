module "vpc" {
  source = "./Modules/VPC"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "./Modules/Security Group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./Modules/EC2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_id
}

module "alb" {
  source = "./Modules/ALB"
  sg_id = module.sg.sd_id
  subnets = module.vpc.subnet_id
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}