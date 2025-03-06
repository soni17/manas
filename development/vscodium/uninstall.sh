# uninstall only if it's already installed
if apt search codium | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove codium
fi

# delete config folder
sudo rm -rf ~/.config/VSCodium
