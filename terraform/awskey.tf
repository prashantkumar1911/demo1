resource "aws_key_pair" "demo1_key" {
  key_name = "demo1-key"    
  public_key = file("~/.ssh/pkdev-tata-key.pub")
}