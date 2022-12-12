resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"

  # Make your instance shared on your host 
  instance_tenancy = "default"

  # Requiered for EKS, Enable/Disable DNS support
  enable_dns_support = true

  # Requiered for EKS, Enable/Disable DNS hostname in the VPC
  enable_dns_hostnames = true

  # Enable/Disable ClassicLink DNS support for the VPC
  enable_classiclink_dns_support = false

  # Request an Amazon-Provided IPv6 CIDR Block
  assign_generated_ipv6_cidr_block = false

  # List of tags
  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id"
  sensitive   = false
}
