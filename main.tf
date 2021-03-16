terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

# You may configure the profile name and Region here
# If aws cli is set up then you may add the profile name
# otherwise privide access credentials in place of 'profile'
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "todo-app" {
  ami           = "ami-04f3901ef34fb506c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "aws_security_group.todo-app-sg.id" ]

  tags = {
    Name = "TodoAppInstance"
  }
}

resource "aws_security_group" "todo-app-sg" {
  name = "jameel-sg"
  ingress {
    from_port   = 8080
    to_port     = 8080
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


# Configure aws auto scaling group and policise

# Configure alternative provider configurations
