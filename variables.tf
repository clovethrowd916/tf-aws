
variable "aws_region" {
    default = "us-east-1"
  
}

variable "default_resource_group" {
  default = "terraform_aws_practice"
}

variable "default_tag" {
    default = "Terraform"
    }
  
variable "default_vpc_address_space" {
  default = "10.0.0.0/16"
}

variable "subnet_ranges" {
  type = "map"
  default = {
    "dev_subnet" = "10.0.0.0/24"
    "qa_subnet"  = "10.0.0.1/24"
  }
  
}