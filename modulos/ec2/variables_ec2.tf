# Variables ec2

variable "subnet_id" {
  description = "The ID of the subnet to deploy the instance in"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}
