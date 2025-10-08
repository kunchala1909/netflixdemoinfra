provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-02d26659fd82cf299"
instance_type = "t2.medium"
key_name = "TERRAFORMKEYPAIR"
vpc_security_group_ids = ["sg-098d6c6e8023f63eb"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
