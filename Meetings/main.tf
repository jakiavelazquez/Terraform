terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

#my ec2 instance
resource "aws_instance" "MyBlueWeb" {
  ami           = var.ami_id
  instance_type = var.instance

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc


  tags = {
    Name = "allow_tls"
  }
}

resource "aws_s3_bucket" "myBucket" {
  bucket = var.bucketname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}