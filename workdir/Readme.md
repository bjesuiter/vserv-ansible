# Workdir folder

This `workdir` repository will be mounted into the ansible-controller container
and serves as the project root for relative paths.

## Ansible vault files

Sources:

- https://subscription.packtpub.com/book/networking_and_servers/9781784398293/8/ch08lvl1sec62/using-a-password-file
- https://opensource.com/article/16/12/devops-security-ansible-vault

Note: The main password file is configured in `assets/ansible.cfg` and is set to
`/etc/ansible/vault_config/vserv.pass`. The docker bind mount for this location can be found in docker-compose.yaml.

How to create this file

```
$ echo "password" > ~/.vault_pass
(replace password with your own secret)
$ chmod 600 ~/.vault_pass
```

How to use it with various commands

```
ansible-playbook -i inventory playbook.yaml --vault-password-file vault/vserv.pass

```
