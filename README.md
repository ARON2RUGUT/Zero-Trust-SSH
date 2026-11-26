# Zero-Trust SSH Onboarding for SecurePay

## Project Overview

This project demonstrates how to configure secure SSH access to SecurePay's staging server using SSH key authentication.

The project uses RSA 4096-bit SSH keys, custom SSH client configuration, and Puppet to manage SSH settings. Password-based SSH authentication is disabled.

## Project Files

 File                           Description 

 0-create_ssh_key_pair.sh      Creates an RSA 4096-bit SSH key pair. 
 1-submit_public_key.sh          Displays the public key for submission to the administrator. 
 2-use_a_private_key.sh  Connects to the staging server using the private key. 
 3-ssh_config.sh | Configures SSH for convenient server access. 
 `100-puppet_ssh_config.pp` | Uses Puppet to enforce the required SSH configuration. 

## Server Information

- Username: kiplangatk
- Server IP: 144.217.6.26
- SSH connection alias: school

## How to Use the Scripts

Run the scripts in the following order:

### 1. Create the SSH key pair

bash
./0-create_ssh_key_pair.sh


This creates a private key and a public key in the `~/.ssh/` directory.

### 2. Display the public key

bash
./1-submit_public_key.sh


Submit the displayed public key to the system administrator for registration.

### 3. Connect to the staging server

bash
./2-use_a_private_key.sh


This establishes an SSH connection using the private key.

### 4. Configure SSH

bash
./3-ssh_config.sh


This creates the SSH configuration that allows connection using:

bash
ssh school

### 5. Apply the Puppet manifest

bash
sudo puppet apply 100-puppet_ssh_config.pp


This ensures that the SSH configuration has the correct settings, including disabling password authentication.

## Security Measures

- RSA 4096-bit SSH keys are used for authentication.
- The private key is stored securely in the user's `.ssh` directory.
- Only the public key is submitted to the administrator.
- SSH directory and configuration permissions are restricted.
- Password-based SSH authentication is disabled.
- Puppet is used to maintain the required SSH configuration.

Important: Never share, publish, or commit your private SSH key. Keep private credentials out of the public GitHub repository.

## Conclusion

This project demonstrates the use of SSH key-based authentication and Puppet configuration management to establish and maintain secure access to SecurePay's staging infrastructure.
