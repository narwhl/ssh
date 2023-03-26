# ssh

> initialize ssh key and config setup using terraform and its cloud workspaces

### usage

This configuration assumes we have previously register our machine using its hostname into terraform state and generate the `tls_private_key` resource.

1. `git clone git@github.com:narwhl/ssh.git ~/.ssh`
2. `cd .ssh/ && terraform init`
3. `terraform workspace select $HOST`
4. `terraform apply`
