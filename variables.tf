variable "access_key" {
  type        = string
  description = "Id de Acceso"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "Clave de Acceso"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "service_names" {
  type        = set(string)
  description = "Nombre de Instancias EC2"
}
