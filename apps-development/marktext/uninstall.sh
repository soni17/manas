# uninstall only if it's already installed
if apt search marktext | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove marktext
fi

rm -rf ~/.config/marktext
