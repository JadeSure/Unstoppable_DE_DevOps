terraform {
  required_version = ">=0.12"
#  backend "s3" {
#     encrypt = true
#     bucket         = "unstoppable-tf-state-hub"
#     key            = "./unstoppable/terraform.tfstate"
#     region         = "ap-southeast-2"
#     # profile        = "default"
#     dynamodb_table = "unstoppable-tf-state-table"
#   }
}

provider "aws" {
  region  = var.region
  # profile = var.aws_profile
  # profile = "default"
}