terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = var.regiao_aws
  default_tags {
    tags = {
      owner      = "Luiz Ribeiro"
      project    = "projeto-wp-iac"
      managed-by = "terraform"
    }
  }
}

resource "aws_instance" "app_server" {
  ami             = var.instancia_ami
  instance_type   = var.instancia_tipo
  security_groups = [aws_security_group.sg_ec2_wp_iac.name]
  key_name        = var.chave-ssh
  tags = {
    Name = var.instancia_name
  }
}

resource "aws_key_pair" "KeySSH" {
  key_name   = var.chave-ssh
  public_key = file("../sshkey/${var.chave-ssh}.pub")
}