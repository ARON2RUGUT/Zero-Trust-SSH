
#!/usr/bin/env bash
# This script creates a 4096-bit RSA SSH key pair named school.

mkdir -p ~/.ssh

chmod 700 ~/.ssh

ssh-keygen -t rsa -b 4096 -f ~/.ssh/school -N "betty"

chmod 600 ~/.ssh/school

chmod 644 ~/.ssh/school.pub

echo "SSH key pair successfully created."

