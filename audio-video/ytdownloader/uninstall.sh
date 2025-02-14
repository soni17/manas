# uninstall only if it's already installed
if apt search ytdownloader | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove ytdownloader
fi

# delete config folder
sudo rm -rf ~/.config/ytdownloader

# delete launcher icon
rm ~/.local/share/applications/ytdownloader*
