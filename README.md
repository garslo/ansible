# ansible

Try it out with lxd:

```bash
$ ./turnup-devbox.sh
Creating devbox
Starting devbox
giving container some time...
time given
...a bunch of ansible output...
```

You'll need `ssh_private_key_vault.yaml` in your directory and, for
the `llnwvpn` role, a `llnw_vpn_vault.yaml` file with some vpn
credentials.
