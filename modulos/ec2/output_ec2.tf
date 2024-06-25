#Outputs EC2

output "my_public_ip" {
  value = aws_instance.example_public.public_ip
}
