#Key Pair Block
resource "aws_key_pair" "deployer" {
  key_name   = "my-terra-key"
  public_key = file("E:/Code/terraform-for-devops/terraform-pratice/terra-key.pub")
}

#Default VPC Block
resource "aws_default_vpc" "default" {}

#Security Group Block
resource "aws_security_group" "emsecurity" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_default_vpc.default.id #interploation

#incoming traffic
  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 #outgoing 
    egress {
        description = "This is for outgoing internet traffic"
        from_port = 0
        to_port   = 0   
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}   

resource "aws_instance" "my-instance" {
  ami           = var.ami_id #Ubuntu 
  instance_type = "t2.micro" #FREE TIER
  key_name      = aws_key_pair.deployer.key_name #key pair interpolation
  security_groups = [aws_security_group.emsecurity.name] #interpolation

  tags = {
    Name = "terra-automate"
  }
}