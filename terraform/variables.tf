variable "regiao_aws" {
  type    = string
  default = "us-west-2"
}

variable "chave-ssh" {
  type    = string
  default = "chavessh"
}

variable "instancia_tipo" {
  type    = string
  default = "t2.micro"
}

variable "instancia_ami" {
  type    = string
  default = "ami-075686beab831bb7f"
  #Ubuntu Server 24.04 LTS (HVM), SSD Volume Type  ami-084568db4383264d4 (64 bits (x86)) in Oregon
}

variable "instancia_name" {
  type    = string
  default = "Wordpress Terraform Ansible"
}