resource "aws_security_group" "allow_ssh-us-west-2" {
  provider = aws.us-west-2
  name        = "allow_ssh-us-west-2"
  description = "Allow SSH inbound traffic on port 22"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["201.17.120.163/32"]
  }
  ingress {
    description      = "SSH from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["201.17.120.163/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh-us-west-2"
    Project = "Arquitetura"
  }
}