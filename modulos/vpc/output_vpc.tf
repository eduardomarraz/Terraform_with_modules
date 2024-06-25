 # Outputs VPC

output "my_vpc_id" {
  value = aws_vpc.main.id
}

output "my_subnet_id" {
  value = aws_subnet.public.id
}
