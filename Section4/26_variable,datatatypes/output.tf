output "ec2IP" {
  value = aws_instance.ec2.public_ip
}