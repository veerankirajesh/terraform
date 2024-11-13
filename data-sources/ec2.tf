resource "aws_instance" "web" {
  #count = 11 #count.index is a special variable given by terraform
  
  ami           = data.aws_ami.Centos-8.id #devops practice-centos8
  instance_type = "t2.micro"

  tags = {
    Name = "data-sources"
  }
  
}