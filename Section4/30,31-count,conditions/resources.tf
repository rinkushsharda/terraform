resource "aws_instance" "ec2" {
  ami = data.aws_ami.linux.id
  instance_type = var.instance_type

  count = var.env == "prod"? 1 : 2

}