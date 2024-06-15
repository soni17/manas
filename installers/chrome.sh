sudo apt install -y ./packages/google-chrome-stable_current_amd64.deb

# fix for slow startup
sudo sed -i "s/StartupNotify=true//" /usr/share/applications/google-chrome.desktop
