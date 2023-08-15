variable "aws_region" {
  description = "region where my resource resides"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "my ami id"
  type        = string
  default     = "ami-0f34c5ae932e6f0e4"
}

variable "instance" {
  description = "my instance type"
  type        = string
  default     = "t2.micro"
}

variable "vpc" {
  description = "my vpc id"
  type        = string
  default     = "vpc-02650c20873519e46"
}

variable "bucketname" {
  description = "my bucket name"
  type        = string
  default     = "my-tf-test-bucket-blue-team1028"
}