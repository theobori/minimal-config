# 🪚 minimal-config

Minimal dependencies and configuration used on Debian system

## 📖 How to build and run ?

1. Install the dependencies 
   - ansible
   - ansible galaxy dependencies

```sh
ansible-galaxy install -r requirements.yml
```

2. Configure a vault password (a filepass is better)
3. Configure an inventory
4. Configure a playbook
   1. Inventory (if needed)
   2. Replace variables
   3. Encrypt the needed ones
5. Run the playbook

```sh
ansible-playbook \
   -i inventory.yml \
   --vault-password-file .vault_pass \
   main.yml
```

## ⚠️ knockd risks

In this configuration, we are using `knockd` to manage the openSSH firewall (`ufw`) rules. It can be very risky. If you want to be safe you can exclude the `knockd` task by commenting the following line in [roles/security/tasks/main.yml](roles/security/tasks/main.yml):

```sh
- include_tasks: knockd.yml
```

And then add a rule for `ufw` that allow you SSH connections.

## ℹ️ Roles and variables

Roles:

- **`nickjj.docker`**: Setup and configure Docker + docker-compose
- **`weareinteractive.ufw`**: Setup the firewall and configure it
- **`base`**: Install basics needed packages for the other roles
- **`profile`**: Setup some default configuration for new users
- **`security`**: Setup system security tools/services like ssh, knockd, etc.
- **`shell`**: Setup a shell environment with fish + tmux 

Variables:
- **`ssh_identity_key_path`**: SSH public key used to auth
- **`knockd_open_ssh_seq`**: Knockd open SSH (should be encrypted)
- **`knockd_close_ssh_seq`**: knockd close SSH (should be encrypted)
- **`knockd_tmp_open_ssh_seq`**: Temporary open SSH (should be encrypted)
- **`knockd_opts`**: knockd CLI arguments used by the service
