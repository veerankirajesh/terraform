variable "instance_names" {
  type = map 
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    shipping = "t3.small"
    payment = "t2.micro"
    dispath = "t2.micro"
    web = "t2.micro"
  }
}

variable "ami_id" {
    type = string 
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  default = "Z07543161P98W58IYJ7KS"
}

variable "domain_name" {
  default = "rajesh76.online"
}

