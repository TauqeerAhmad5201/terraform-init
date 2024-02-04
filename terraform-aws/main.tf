terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
  required_version = ">= 1.7.2"
}

provider "aws" {
  region = "us-east-1"
}


//creating aws instances
resource "aws_instance" "my_ec2_instance" {
  for_each = local.instance_name
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}

//creating aws s3 bucket
# resource "aws_s3_bucket" "my_s3_bucket" {
#   bucket = "bucket-1"
#   tags = {
#     Name = "bucket-1"
#     Environment = "Dev"
#   }
# } 