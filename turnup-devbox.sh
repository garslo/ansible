#!/bin/bash

name='devbox'

lxc delete --force $name
lxc launch ubuntu:16.04 $name
echo "giving container some time..."
sleep 5
echo "time given"

lxc file push /home/garslo/.ssh/id_rsa.pub $name/root/.ssh/authorized_keys
lxc exec $name chown root:root /root/.ssh/authorized_keys
ip=$(lxc list | grep $name | awk '{print $6}')

echo "${ip} ansible_user=root" >> hosts
lxc exec $name -- apt-get install python
ansible-playbook --limit $ip -i hosts --ask-vault-pass llnwdev.yaml

lxc config set $name user.fqdn $name
