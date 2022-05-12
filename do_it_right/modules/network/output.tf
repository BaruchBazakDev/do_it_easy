output "baruch-vpc" {
  value = aws_vpc.baruch-vpc.id
}

output "sub_id_1" {
  value = aws_subnet.baruch-tf-1.id
}

output "sub_id_2" {
  value = aws_subnet.baruch-tf-2.id
}
