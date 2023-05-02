variable "region" {
  description = "AWS server region"
  type        = string
  default     = "ap-southeast-2"
}

variable "deploy_env" {
  description = "deploy env to distinguish uat or prod"
  type        = string
}

# DE VPC
variable "vpc_cidr_block" {
  description = "AWS VPC vpc_cidr_block"
  type        = string
}

variable "az_private_count" {
  description = "split to how many private subnets"
  type        = number
}
variable "az_public_count" {
  description = "split to how many public subnets"
  type        = number
}