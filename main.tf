resource "tls_private_key" "ssh_private_key" {
	algorithm = "RSA"
	rsa_bits = "2048"
}

resource "aws_key_pair" "ssh_public_key" {
	key_name = "public-key"
	public_key = tls_private_key.ssh_private_key.public_key_openssh
}

resource "aws_security_group" "ssh" {
	name = "allow_ssh"
	description = "Allow SSH inbound traffic"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

resource "aws_instance" "example_server" {
	ami = var.ami
	instance_type = var.instance_type
	key_name = aws_key_pair.ssh_public_key.key_name

	vpc_security_group_ids = var.security_group_ids
	
	tags = {
		"Name" = "${var.agency_name}-${var.env}-${var.server_name}"
	}
}