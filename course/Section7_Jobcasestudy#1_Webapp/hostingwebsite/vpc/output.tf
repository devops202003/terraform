output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "pub_subnet_1" {
  value = "${aws_subnet.public_subnet_1.id}"
}

output "pub_subnet_2" {
  value = "${aws_subnet.public_subnet_2.id}"
}

output "pri_subnet_1" {
  value = "${aws_subnet.private_subnet_1.id}"
}

output "pri_subnet_2" {
  value = "${aws_subnet.private_subnet_2.id}"
}
