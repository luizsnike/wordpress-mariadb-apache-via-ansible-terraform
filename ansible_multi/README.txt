Comandos Utils

192.168.15.200 - Base
192.168.15.201 - 201
192.168.15.202 - 202

user ALL:(ALL:ALL) NOPASSWD:ALL

sudo usermod -aG wheel nomeusuario

#gerar chave ssh
ssh-keygen

#copiar o idssh
ssh-copy-id luiz@192.168.15.201
ssh-copy-id luiz@192.168.15.202

sudo apt install ansible
ansible 127.0.0.1 -m ping

ansible all -m ping

ansible --version

##AD HOC
ansible grupo -m apt -a "name=curl state=present" --become

#ADICIONAR UM PACOTE
ansible webservers -m apt -a "name=wget state=present" --become
ansible webservers -m yum -a "name=wget state=present" --become

#REMOVER UM PACOTE
ansible webservers -m apt -a "name=wget state=absent" --become
ansible webservers -m yum -a "name=wget state=absent" --become

#FACTS
ansible 127.0.0.1 -m setup
ansible all -m setup
ansible webservers -m setup -a "filter=ansible_system_vendor"
ansible webservers -m setup -a "filter=ansible_distribution_file_variety"

#PLAYBOOK
ansible-playbook playbook1.yml

#CRIANDO UMA ROLE
ansible-galaxy init ServerUtils
#serverTools é o nome da pasta que vai salvar os arquivos

Fedora deve ter o pacote:
sudo yum install python3-libdnf5

verificar local de salvamento do wordpress