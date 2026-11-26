
#!/usr/bin/env bash
# This script configures SSH for passwordless access to the SecurePay staging server.

mkdir -p ~/.ssh

echo "Host school" > ~/.ssh/config
echo "HostName 144.217.6.26" >> ~/.ssh/config
echo "User kiplangatk" >> ~/.ssh/config
echo "IdentityFile ~/.ssh/school" >> ~/.ssh/config
echo "PasswordAuthentication no" >> ~/.ssh/config

chmod 600 ~/.ssh/config

echo "SSH configuration successfully updated."

