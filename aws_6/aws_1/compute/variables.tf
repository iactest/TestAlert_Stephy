variable "ami_id" {
  default = "ami-830c94e3"
}

variable "type" {
  default = "t2.micro"
}

variable "cidr_blocks"{
  default = ["0.0.0.0/16"]
}
