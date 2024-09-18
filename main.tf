# Proveedor AWS

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Recursos : Instancia EC2

resource "aws_instance" "mi_instancia" {
  for_each = var.service_names
  
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"

  tags = {
    Name = "MiInstanciaTerraform"
  }
}
