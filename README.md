# ansible

Try it out with lxd:

```bash
$ lxc launch ubuntu:14.04 test-ansible
...
$ lxc file push $HOME/.ssh/id_rsa.pub test-ansible/root/.ssh/authorized_keys
...
$ lxc exec test-ansible chown root:root /root/.ssh/authorized_keys
...
$ lxc list | grep test-ansible | awk '{print $6}'
<ip of test-ansible>
$ echo <ip of test-ansible> >> hosts
$ ansible-playbook --limit <ip of test-ansible> -i hosts --ask-vault-pass devbox.yaml
...
```

You'll need `ssh_private_key_vault.yaml` in your directory.
