0-use_a_private_key: SSH script to connect to server using private key ~/.ssh/school with user ubuntu
1-create_ssh_key_pair: Generates an RSA key pair named 'school' (4096 bits) protected by passphrase 'betty'
2-ssh_config: Configures SSH client to use private key ~/.ssh/school and disable password authentication
3-ssh_key_authorized: Adds a given SSH public key to the ubuntu user's authorized_keys
