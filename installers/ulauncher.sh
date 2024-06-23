# https://ulauncher.io/#Download
# TO DO: download latest version

# download and install
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb
sudo apt install -y ./ulauncher_5.15.7_all.deb
rm ulauncher_5.15.7_all.deb

# config file
mkdir -p ~/.config/ulauncher
cp configs/ulauncher.json ~/.config/ulauncher/settings.json

# autostart
mkdir -p ~/.config/autostart/
cp configs/ulauncher.desktop ~/.config/autostart
