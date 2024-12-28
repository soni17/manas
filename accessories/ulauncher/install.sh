# https://ulauncher.io/#Download

# get installer filename and version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="ulauncher_${LATEST_VERSION}_all.deb"

# download installer
wget -q https://github.com/Ulauncher/Ulauncher/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/ulauncher
cp accessories/ulauncher/settings.json ~/.config/ulauncher

# autostart
mkdir -p ~/.config/autostart/
cp accessories/ulauncher/ulauncher.desktop ~/.config/autostart
