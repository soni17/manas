# uninstall only if it's already installed
if apt search google-chrome-stable | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove google-chrome-stable
fi

# delete configs
sudo rm -rf ~/.config/google-chrome

# remove repository
sudo rm -f /etc/apt/sources.list.d/google-chrome.list
sudo rm -f /etc/apt/trusted.gpg.d/google-chrome.gpg
