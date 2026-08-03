cp development/bash-settings/bashrc ~/.bashrc
cp development/bash-settings/bash-aliases ~/.bash_aliases
cp development/bash-settings/starship.toml ~/.config

# add starship to root user
sudo cp development/bash-settings/bashrc-root /root/.bashrc
sudo cp development/bash-settings/starship.toml /root/.config
