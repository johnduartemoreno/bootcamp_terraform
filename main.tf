# Proveedor AWS

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

locals {
  extra_tag = "extra-tag"
}

# Recursos : Instancia EC2

resource "aws_instance" "mi_instancia" {
  for_each = var.service_names

  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"

  tags = {
    Extratag = local.extra_tag
    Name     = "EC2- ${each.key}"
  }
}

resource "aws_cloudwatch_log_group" "ec2_log_group" {
  for_each = var.service_names
  tags = {
    Environment = "test"
    Service     = each.key
  }
  lifecycle {
    create_before_destroy = true
  }
}
