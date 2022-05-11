output "baruch-vpc" {
  value = aws_vpc.baruch-vpc.id
}

output "baruch-tf-1" {
  value = aws_subnet.baruch-tf-1.id
}

output "baruch-tf-2" {
  value = aws_subnet.baruch-tf-2.id
}
