#Instalando o Terraform no MacOS via HomeBrew

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform

brew tap hashicorp/tap

brew install hashicorp/tap/terraform

$terraform --version
Terraform v1.12.1
on darwin_arm64

#Comandos AdHoc

terraform providers

terraform init

terraform fmt
terraform fmt -check
terraform fmt -diff

terraform validate

terraform plan
terraform plan -out nome.out
terraform show nome.out

terraform apply
terraform apply nome.out
terraform apply -auto-approve

terraform apply -destroy
terraform destroy
terraform destroy -auto-approve
