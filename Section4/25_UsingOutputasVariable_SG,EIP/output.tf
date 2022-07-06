output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "eip" {
  value = aws_eip.ec2_eip.public_ip
}