sudo apt install -y ./packages/ulauncher_5.15.7_all.deb

# configs
mkdir -p ~/.config/ulauncher
cp configs/ulauncher.json ~/.config/ulauncher/settings.json

# autostart
mkdir -p ~/.config/autostart/
cp configs/ulauncher.desktop ~/.config/autostart
