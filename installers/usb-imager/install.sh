# https://gitlab.com/bztsrc/usbimager/tree/binaries
# TO DO: download latest version

# download and install
wget https://gitlab.com/bztsrc/usbimager/-/raw/binaries/usbimager_1.0.10-amd64.deb
sudo apt install -y ./usbimager_1.0.10-amd64.deb
rm usbimager_1.0.10-amd64.deb

# panel icon
cp installers/usb-imager/usbimager.desktop ~/.local/share/applications
