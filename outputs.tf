output "Dirección_Ip_Pública" {
  #value = aws_instance.mi_instancia.public_ip
  value = { for service, i in aws_instance.mi_instancia : service => i.private_ip }
}
