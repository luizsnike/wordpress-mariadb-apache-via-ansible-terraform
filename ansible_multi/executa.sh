#!/bin/zsh
echo "Executando o Ansible e exibindo o tempo de execução"
date
time ansible-playbook playbook.yml
date