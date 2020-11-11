module "main-vpc" {
  source     = "../modules/vpc"
  APP_ENV        = "dev"
  AWS_REGION = var.AWS_DEFAULT_REGION
}

module "instances" {
  source         = "../modules/instances"
  APP_ENV            = "dev"
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
}

