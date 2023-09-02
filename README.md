# 🪚 minimal-config

## 📖 How to build and run ?

1. Install the dependencies 
   - ansible
   - ansible galaxy dependencies

2. Configure a vault password (a filepass is better)
3. Configure an inventory
4. Configure a playbook
5. Run the playbook

## ℹ️ Roles

Roles:
- **`base`**: Install basics needed packages for the other roles
- **`nickjj.docker`**: Setup and configure Docker + docker-compose
- **`weareinteractive.ufw`**: Setup the firewall and configure it
- **`minimal`**: Setup a minimal environment (shell and others tools) and configure it
