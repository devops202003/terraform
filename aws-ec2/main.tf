provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "devops202003-terraform"
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = "ami-05ade558e7e3abf9c"
  instance_type = "t2.micro"
  depends_on = [aws_s3_bucket.example]
}

resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example.id
}

