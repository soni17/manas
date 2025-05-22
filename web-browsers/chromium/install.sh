# https://www.chromium.org/Home

# install
sudo apt-get install -y chromium

# set as default browser
xdg-settings set default-web-browser chromium.desktop

# add launcher icon that fixes slow startup
mkdir -p ~/.local/share/applications
cp web-browsers/chromium/chromium.desktop ~/.local/share/applications
