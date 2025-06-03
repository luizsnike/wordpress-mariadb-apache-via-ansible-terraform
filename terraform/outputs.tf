output "ip_publico" {
  value = aws_instance.app_server.public_ip
}