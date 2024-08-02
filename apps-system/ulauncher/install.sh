# https://ulauncher.io/#Download

LATEST_VERSION=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

# download and install
wget -q https://github.com/Ulauncher/Ulauncher/releases/download/${LATEST_VERSION}/ulauncher_${LATEST_VERSION}_all.deb -O /tmp/ulauncher_${LATEST_VERSION}_all.deb
sudo apt install -y /tmp/ulauncher*.deb
rm /tmp/ulauncher*.deb

# config file
mkdir -p ~/.config/ulauncher
cp apps-system/ulauncher/settings.json ~/.config/ulauncher

# autostart
mkdir -p ~/.config/autostart/
cp apps-system/ulauncher/ulauncher.desktop ~/.config/autostart
