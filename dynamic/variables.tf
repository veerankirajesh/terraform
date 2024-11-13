variable "ingress_rules" {
  default = [
    {
    description = "Allow port 80"
    from_port   = 80 #Port 80 is the default listening port for web servers serving HTTP
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },

    {
    description = "Allow port 443"
    from_port   = 443 # Port 443 is used for secure connections.
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },

    {
    description = "Allow port 22"
    from_port   = 22 #Port 22 is used for SSH connections.
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}