# uninstall only if it's already installed
if apt search dbgate | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove dbgate
fi

sudo rm -rf ~/.dbgate
