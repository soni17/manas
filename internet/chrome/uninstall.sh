# uninstall
sudo apt-get purge -y --autoremove google-chrome-stable

# delete config folder
sudo rm -rf ~/.config/google-chrome

# remove repository
sudo rm -f /etc/apt/sources.list.d/google-chrome.list
sudo rm -f /etc/apt/trusted.gpg.d/google-chrome.gpg

# delete launcher icon
rm ~/.local/share/applications/google-chrome.desktop
