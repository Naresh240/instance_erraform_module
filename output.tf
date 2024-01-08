output public_ips {
  value       = aws_instance.example[*].public_ip
  description = "Public ips of instance"
}

output ami_value {
    value   = aws_instance.example[*].ami
}