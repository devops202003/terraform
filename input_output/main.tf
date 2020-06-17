provider "aws" {
  region = var.region
}

resource "aws_instance" "example2" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

output "ami_example2" {
  value = aws_instance.example2.arn
}
