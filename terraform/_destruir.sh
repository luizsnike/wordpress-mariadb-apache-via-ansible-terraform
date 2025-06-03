#!/bin/zsh
#AS 3 LINHAS ABAIXO SAO PARA CONFIGURAR SUAS CREDENCIAIS DA AWS
#export AWS_ACCESS_KEY_ID=SUA_ACCESS_KEY_ID
#export AWS_SECRET_ACCESS_KEY=SUA_SECRET_ACCESS_KEY
#export AWS_DEFAULT_REGION=us-west-2
echo "Executando o Terraform para criar o ambiente e exibindo o tempo de execução"
date
time terraform destroy -auto-approve
date