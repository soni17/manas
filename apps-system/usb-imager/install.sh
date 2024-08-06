# https://gitlab.com/bztsrc/usbimager/tree/binaries
# TO DO: download latest version

# download and install
FILENAME="usbimager_1.0.10-amd64.deb"
wget -q https://gitlab.com/bztsrc/usbimager/-/raw/binaries/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME
