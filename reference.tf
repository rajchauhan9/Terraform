esource "aws_instance" "tf-srv-2" {
  ami                    = "ami-06878d265978313ca"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"

  tags = {
    Name = "Shanvi-KG"
  }

}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.tf-srv-2.id
  allocation_id = aws_eip.lb.id
}

ingress {
  from_port   = 443
  to_port     =443
  protocol    = "tcp"
  cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
}
