resource "aws_instance" "ec2-terraform" {
    provider = aws.us-west-2

    ami = var.aims["ami-us-west-2-amazon-ubuntu-22.04-x86"]
    instance_type = "t2.micro"
    key_name = "terraform-aws-us-west-2-key"

    vpc_security_group_ids  = [
        aws_security_group.allow_ssh-us-west-2.id
    ]

    user_data = <<-EOF
                  #!/bin/bash
                  cd /home/ubuntu/
                  echo $(pwd)
                  echo "<h1>Teste<h1>" > index.html
                  nohup busybox httpd -f -p 8080 &
              EOF

    tags = {
      Name = "ec2-terraform-ubuntu"
      Project = "Arquitetura"
    }
}
