# 🪚 minimal-config

Minimal dependencies and configuration used on Debian system

## 📖 How to build and run ?

1. Install the dependencies 
   - ansible
   - ansible galaxy dependencies

2. Configure a vault password (a filepass is better)
3. Configure an inventory
4. Configure a playbook
5. Run the playbook

## ℹ️ Roles and variables

Roles:
- **`base`**: Install basics needed packages for the other roles
- **`nickjj.docker`**: Setup and configure Docker + docker-compose
- **`weareinteractive.ufw`**: Setup the firewall and configure it
- **`profile`**: Setup some default configuration for new users
- **`security`**: Setup system security tools/services like ssh, knockd, etc.
- **`shell`**: Setup a shell environment with fish + tmux 

Variables:
- **`ssh_identity_key_path`**: SSH public key used to auth
- **`knockd_open_ssh_seq`**: Knockd open SSH (should be encrypted)
- **`knockd_tmp_open_ssh_seq`**: Temporary open SSH (should be encrypted)
- **`knockd_opts`**: knockd CLI arguments used by the service

Every variables are supposed to be edited.