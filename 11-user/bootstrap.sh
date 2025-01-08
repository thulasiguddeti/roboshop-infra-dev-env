#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
dnf install ansible -y 
ansible-pull -U https://github.com/thulasiguddeti/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml