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

variable "key_name" {
	type = string
	default = "example"
}
