# uninstall only if it's already installed
if apt search draw.io | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove draw.io
fi

# delete config folder
sudo rm -rf ~/.config/draw.io
