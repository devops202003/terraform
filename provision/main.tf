provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_key_pair" "example" {
  key_name   = "terraformkey"
  public_key = file("/root/terraform/provision/terraform.pub")
}

resource "aws_instance" "example" {
  key_name      = aws_key_pair.example.key_name
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/root/terraform/provision/terraform")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}
