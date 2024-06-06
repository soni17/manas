sudo apt install -y chromium

# fix for slow startup
sudo sed -i "s/StartupNotify=true//" /usr/share/applications/chromium.desktop
