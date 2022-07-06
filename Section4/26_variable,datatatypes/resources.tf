resource "aws_instance" "ec2" {
  ami = data.aws_ami.linux.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.securityGroup.id]
}
resource "aws_security_group" "securityGroup" {
  name = "sg06_01"

  ingress {
    from_port = 0
    protocol  = "tcp"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/32"]
  }

}