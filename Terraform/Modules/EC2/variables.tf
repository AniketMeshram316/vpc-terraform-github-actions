variable "sg_id" {
  description = "SG ID For EC2"
  type = string
}

variable "subnets" {
  description = "Subnets For EC2"
  type = list(string)
}

variable "ec2_names" {
  description = "EC2 Names"
  type = list(string)
  default = [ "WebServer1", "WebServer2" ]
}