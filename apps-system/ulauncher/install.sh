# https://ulauncher.io/#Download

# download and install
LATEST_VERSION=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="ulauncher_${LATEST_VERSION}_all.deb"
wget -q https://github.com/Ulauncher/Ulauncher/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME

# config file
mkdir -p ~/.config/ulauncher
cp apps-system/ulauncher/settings.json ~/.config/ulauncher

# autostart
mkdir -p ~/.config/autostart/
cp apps-system/ulauncher/ulauncher.desktop ~/.config/autostart
