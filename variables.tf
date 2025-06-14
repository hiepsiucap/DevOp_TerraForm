# VPC MODULE
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone to deploy resources in"
  type        = string
  default     = "ap-southeast-2a"
}

# EC2 MODULE
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
  default     = "ami-00543daa0ad4d3ea4" # Amazon Linux 2023 (Sydney)
}

variable "key_name" {
  description = "Name of the key pair to use for EC2 instances"
  type        = string
  default     = "hiep123456" 
}

# SG MODULE
variable "my_ip" {
  description = "Your public IP address to allow SSH access"
  type        = string
  default     = "0.0.0.0/0"
}
