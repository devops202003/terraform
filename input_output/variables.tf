variable "region" {
   default = "ap-south-1"
}

variable "amis" {
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
    "ap-south-1" = "ami-0447a12f28fddb066"
  }
}
