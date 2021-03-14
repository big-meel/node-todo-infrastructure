terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

# You may configure the profile name and Region here
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "ToDoApp" {
  ami           = "ami-04f3901ef34fb506c"
  instance_type = "t2.micro"

  tags = {
    Name = "TodoAppInstance"
  }
}


# Configure aws auto scaling group and policise

# Configure alternative provider configurations
