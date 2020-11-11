module "main-vpc" {
  source              = "../modules/vpc"
  APP_ENV                 = "prod"
  AWS_DEFAULT_REGION  = var.AWS_DEFAULT_REGION
}


