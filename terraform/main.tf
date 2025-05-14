provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "backend_sg" {
  name        = "backend-sg"
  description = "Allow HTTP, SSH, and App port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-0989fb15ce71ba39e" # Ubuntu 22.04
  instance_type          = "t3.micro"
  key_name               = "mern-key"
  vpc_security_group_ids = [aws_security_group.backend_sg.id]
  user_data              = file("user-data.sh") 
# Force update
  user_data_replace_on_change = true


  tags = {
    Name = "MERN-Backend"
  }
}

# Trigger apply
