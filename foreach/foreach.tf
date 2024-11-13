resource "aws_instance" "web" {
  for_each = var.instance_names #meta-argument accepts a map or a set of strings
  ami           = var.ami_id #devops practice-centos8
  instance_type = each.value  #The map value corresponding to this instance.

  tags = {
    Name =  each.key # The map key
  }
  
}


# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }


resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip] # web record public
}




# output "instance_info" {
#   value = aws_instance.web
# }



