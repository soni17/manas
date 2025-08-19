# uninstall
sudo apt-get purge -y --autoremove wezterm

# remove repository
sudo rm -f /usr/share/keyrings/wezterm-fury.gpg
sudo rm -f /etc/apt/sources.list.d/wezterm.list

# delete config file
rm -f ~/.wezterm.lua
