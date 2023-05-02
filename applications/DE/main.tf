module "de-VPC" {
  source           = "../../modules/vpc"
  region           = var.region
  deploy_env       = var.deploy_env
  vpc_cidr_block   = var.vpc_cidr_block
  az_private_count = var.az_private_count
  az_public_count  = var.az_public_count
}


module "retail-RDS" {
  source           = "../../modules/rds"
 
}
