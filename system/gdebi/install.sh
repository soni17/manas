# install
sudo apt-get install -y gdebi

# override launcher
mkdir -p ~/.local/share/applications
cp system/gdebi/gdebi.desktop ~/.local/share/applications
