output "private_key" {
    value = tls_private_key.ssh_private_key.private_key_pem
    sensitive = true
}

output "instance_ip" {
    value = aws_instance.example_server.public_ip
}