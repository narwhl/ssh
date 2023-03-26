data "vault_generic_secret" "ssh_keypair" {
  path = "secret/self/ssh/${terraform.workspace}"
}

resource "local_sensitive_file" "public_key" {
  content         = data.vault_generic_secret.ssh_keypair.data.ssh_public_key
  filename        = "${path.module}/id_ed25519.pub"
  file_permission = "0644"
}

resource "local_sensitive_file" "private_key" {
  content         = data.vault_generic_secret.ssh_keypair.data.ssh_private_key
  filename        = "${path.module}/id_ed25519"
  file_permission = "0600"
}
