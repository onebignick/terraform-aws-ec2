variable "network_interface_id" {
	type = string
	default = "eni-0af26e82967db6fe8"
}

variable "ami" {
	type = string
	default = "ami-0014f044bdbf28d55"
}

variable "instance_type" {
	type = string
	default = "t2.micro"
}

variable "agency_name" {
	type = string
	default = "example_agency"
}

variable "server_name" {
	type = string
	default = "example_server"
}

variable "env" {
	type = string
	default = "dev"
}

variable "security_group_ids" {
	type = list(string)
	default = []
}

variable "public_key_name" {
	type = string
	default = "example"
}
