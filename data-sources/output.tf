output "ami_id" {
  value = data.aws_ami.Centos-8.id
}

output "aws_ami_id" {
  value = data.aws_ami.aws-linux-2.id
}

output "vpc_info" {
  value = data.aws_vpc.default
}