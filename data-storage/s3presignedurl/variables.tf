variable "python_version" {
  type        = string
  description = "Python version for lambdas"
  default     = "python3.10"
}

variable "aws_region" {
  type        = string
  description = "AWS region to use for resources."
  default     = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "Name of the S3 Bucket"
  default     = "s3storage202509141038"
}

variable "vpc_cidr_block" {
  description = "VPC Cidr block"
  default     = "10.0.0.0/16"
}

variable "vpc_id" {
  description = "VPC Id"
  default     = "vpc-0c139211d38144554"
}

variable "public_subnet_ids" {
  description = "Public subnet ids"
  default     =   [
  "subnet-006c848ca73f8c865",
  "subnet-0e4fa08930f5bd9f3",
  "subnet-0574ba301967c2a4d",
]
}

variable "publicroutetableid" {
  type        = string
  description = "RouteTableId"
  default     = "rtb-0f0ad0eaa3f00b93b"
}

variable "private_subnet_ids" {
  description = "Private subnet ids"
  default     =   [
  "subnet-0febb89015fa33250",
  "subnet-017e76153677d5ac8",
  "subnet-0d926caa5299c9f26",
]
}

variable "privateroutetableid" {
  type        = string
  description = "RouteTableId"
  default     = "rtb-075e2bc8e95f2711c"
}

variable "common_tags" {
  description = "A list of common tags to be applied to all resources"
  type        = map(string)
  default = {
    Environment = "dev_react-presignedurl"
    Team        = "cloud team"
  }
}

variable "sourcefiles" {
  type        = string
  description = "Path of web files to upload"
  default     = "./dist"
}

