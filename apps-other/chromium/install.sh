sudo apt install -y chromium

# panel icon
cp apps-other/chromium/chromium.desktop ~/.local/share/applications

# set as default browser
xdg-settings set default-web-browser chromium.desktop
