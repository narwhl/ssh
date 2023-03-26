# ssh

> initialize ssh key and config setup using terraform and its cloud workspaces

### usage

This configuration assumes we have previously register our machine using its hostname into terraform state and generate the `tls_private_key` resource, and the keys are stored in Vault. 

The following steps requires login for both Terraform Cloud and Vault for state retrieval and generate token for Vault provider.

1. `git clone https://github.com/narwhl/ssh.git ~/.ssh`
2. `cd .ssh/ && terraform init`
3. `terraform workspace select $HOST`
4. `terraform apply`
