# uninstall only if it's already installed
if apt search marktext | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove marktext
fi

# delete config folder
rm -rf ~/.config/marktext
