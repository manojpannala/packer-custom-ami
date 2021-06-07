# Variable for Create Instance Module
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/mrp_key.pub"
}

variable "VPC_ID" {
    type = string
    default = ""
}

variable "ENVIRONMENT" {
    type    = string
    default = ""
}

variable "AMI_ID" {
    type    = string
    default = ""
}

variable "AWS_REGION" {
default = "eu-central-1"
}


variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "PUBLIC_SUBNETS" {
  type = list
}