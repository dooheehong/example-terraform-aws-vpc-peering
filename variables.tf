variable "region" {
  default = "us-west-1"
}

//variable "ami_id" {
//  default = "ami-a0360bc3"
//}

variable "instance_class" {
  default = "t3.small"
}

variable "key_name" {
  description = "SSH key name to launch instances with"
  default = "devops-peering"
}

