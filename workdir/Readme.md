# Workdir folder

This `workdir` repository will be mounted into the ansible-controller container
and serves as the project root for relative paths.

## Ansible vault files

Source: https://subscription.packtpub.com/book/networking_and_servers/9781784398293/8/ch08lvl1sec62/using-a-password-file

How to create this file

```
$ echo "password" > ~/.vault_pass
(replace password with your own secret)
$ chmod 600 ~/.vault_pass
```

How to use this file

```
ansible-playbook -i inventory playbook.yaml --vault-password-file vault/vserv.pass
```
