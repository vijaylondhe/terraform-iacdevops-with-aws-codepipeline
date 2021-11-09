variable "aws_region" {
  description = "AWS Region"
  type = string 
  default = "us-east-1"
}

variable "environment" {
  description = "Environment variable used prefix"
  type = string
  default = "dev"
}

variable "buisness_division" {
  description = "Buisness division for organization"
  type = string
  default = "sap"
}