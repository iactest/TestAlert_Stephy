terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-24"
}

resource "aws_instance" "ebs_optimized_7" {
  ami           = var.ami_id
  instance_type = var.type
  #ebs_optimized = false
  #monitoring = false
  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_ebs_volume" "example_7" {
  availability_zone = "us-west-2a"
  size              = 40
  encrypted         = false
  tags = {
    Name = "HelloWorld"
  }
}
