provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami                    = "ami-032659fb89df2f299"
  instance_type          = "t2.micro"       
  key_name               = "TERRAFORMKEYPAIR"
  vpc_security_group_ids = ["sg-095d6c689e23f63eb"]  

  tags = {
    Name = "Jenkins"  
  }
}

variable "instance_names" {
  default = ["Jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
