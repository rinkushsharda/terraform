output "AWS_AMI_ID" {
  value = data.aws_ami.linux.id
}

output "EC2_IP" {
  value = aws_instance.ec2.public_ip
}