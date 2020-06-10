variable "region" {
  type = "string"
  default = "ap-south-1"
}

resource "aws_instance" "example" {
 ami = "ami-0447a12f28fddb066"
 instance_type = "t2.micro"
 tags = {
  Name = "terraform-example"
 }
}
