module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  az                  = var.availability_zone
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
  my_ip  = var.my_ip
}
module "ec2" {
  source            = "./modules/ec2"
  ami_id            = var.ami_id
  key_name          = var.key_name
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
  public_sg_id      = module.sg.public_sg_id
  private_sg_id     = module.sg.private_sg_id
}
