terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  count = var.instance_count
  
  tags = {
    Name = "OutputTaskMachine-${count.index}"
    }
}

output "ec2_names_list" {
    value = aws_instance.myec2[*].tags
}