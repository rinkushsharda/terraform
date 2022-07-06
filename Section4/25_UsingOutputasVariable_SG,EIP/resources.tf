resource "aws_instance" "ec2" {
  ami = data.aws_ami.linux.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg1.id]
}
resource "aws_eip" "ec2_eip" {
  vpc = "true"
}

resource "aws_security_group" "sg1" {
  name = "terra25_4"

  ingress {
    from_port = 0
    protocol  = "tcp"
    to_port   = 0
    cidr_blocks      = ["${aws_eip.ec2_eip.public_ip}/32"]
  }


}

resource "aws_eip_association" "eip_ec2" {
  instance_id = aws_instance.ec2.id
  allocation_id = aws_eip.ec2_eip.id
}