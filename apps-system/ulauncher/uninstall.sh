# uninstall only if it's already installed
if apt search ulauncher | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove ulauncher
fi

# delete configs
sudo rm -rf ~/.config/ulauncher

# delete autostarter
sudo rm -f ~/.config/autostart/ulauncher.desktop
