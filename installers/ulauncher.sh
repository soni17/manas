# https://ulauncher.io/#Download

LATEST_VERSION=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

# download and install
wget https://github.com/Ulauncher/Ulauncher/releases/download/${LATEST_VERSION}/ulauncher_${LATEST_VERSION}_all.deb
sudo apt install -y ./ulauncher*
rm ulauncher*

# config file
mkdir -p ~/.config/ulauncher
cp configs/ulauncher.json ~/.config/ulauncher/settings.json

# autostart
mkdir -p ~/.config/autostart/
cp configs/ulauncher.desktop ~/.config/autostart
