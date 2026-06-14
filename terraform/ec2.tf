# Create Ec2 Instance

data "aws_ami" "ubuntu" {
    most_recent = true
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "demo1" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.micro"
    key_name = aws_key_pair.demo1_key.key_name
    security_groups = [
        aws_security_group.demo1_sg.name
    ]
    tags = {
      Name = "demo1"
    }
}