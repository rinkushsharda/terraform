
resource "aws_instance" "ec2" {
  ami = data.aws_ami.linux.id
  instance_type = "t2.micro"
}