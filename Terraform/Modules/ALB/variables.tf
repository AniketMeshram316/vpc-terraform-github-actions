variable "sg_id" {
  description = "SG ID For Application Load Balancer"
  type = string
}

variable "subnets" {
  description = "Subnets For Application Load Balancer"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC ID For Application Load Balancer"
  type = string
}

variable "instances" {
  description = "Instance ID For Application Load Balancer"
  type = list(string)
}