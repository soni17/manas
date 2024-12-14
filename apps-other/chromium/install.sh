# https://www.chromium.org/Home/

sudo apt-get install -y chromium

# set as default browser
xdg-settings set default-web-browser chromium.desktop

# launcher icon that fixes slow startup
mkdir ~/.local/share/applications
cp apps-other/chromium/chromium.desktop ~/.local/share/applications
