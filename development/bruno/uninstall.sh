# uninstall only if it's already installed
if apt search bruno | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove bruno
fi

# delete config folder
sudo rm -rf ~/.config/bruno
