provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0d92749d46e71c34c"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0fa4ce6b8dabfb489"]
  user_data=file("${path.module}/app1-install.sh")
  tags = {
    Name = "Terra-instance"
  }
}





