
resource "aws_vpc" "terraform_aws_vpc" {
    cidr_block = "${var.default_vpc_address_space}"
    
    tags = {
        Name = "${var.default_tag}"
    }  
}

resource "aws_subnet" "terraform_aws_subnet" {
    cidr_block = "${var.subnet_ranges["dev_subnet"]}"
    vpc_id = "${aws_vpc.terraform_aws_vpc.id}"
    tags = {
        Name = "${var.default_tag}"
    }
  
}
