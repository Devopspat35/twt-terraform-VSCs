#!/bin/bash
#set hostname to ans
sudo hostnamectl set-hostname ans
# Create a new user and configure for Ansible
sudo useradd -m -s /bin/bash ansible
sudo passwd ansible <<EOF
foncha
EOF
# Allow the new user to use sudo without a password (optional)
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/ansible
#install python3
sudo apt install python3 -y
#updates the repository metadata:
sudo apt  update
#install python-pip
sudo apt install python3-pip -y
#again updates the repository to refresh metadata:
sudo apt  update
#create a repository for ansible
sudo apt-add-repository ppa:ansible/ansible -y
#install ansible packages
sudo apt install ansible -y
#grant ansibleUser the ownership of files in ansible Home directory
sudo chown -R ansible:ansible /etc/ansible/
#Install python-is-python3:
sudo apt install python-is-python3
#install boto3
sudo pip install boto3 --break-system-packages
#install python3-pip again after system package break
sudo apt install python3-pip -y
#Install aws_cli in the localhost:
sudo snap install aws-cli --classic
#Install ansible-core:
sudo apt install ansible-core -y
#install tree command
sudo apt install tree -y







