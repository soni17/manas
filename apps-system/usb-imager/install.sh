# https://gitlab.com/bztsrc/usbimager/tree/binaries
# TO DO: download latest version

# download and install
wget -q https://gitlab.com/bztsrc/usbimager/-/raw/binaries/usbimager_1.0.10-amd64.deb -O /tmp/usbimager_1.0.10-amd64.deb
sudo apt-get install -y /tmp/usbimager_1.0.10-amd64.deb
rm /tmp/usbimager_1.0.10-amd64.deb
