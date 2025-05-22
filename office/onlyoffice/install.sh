# https://www.onlyoffice.com
# https://github.com/ONLYOFFICE/DesktopEditors

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/ONLYOFFICE/DesktopEditors/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="onlyoffice-desktopeditors_amd64.deb"

# download installer
wget -q https://github.com/ONLYOFFICE/DesktopEditors/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/onlyoffice
cp office/onlyoffice/DesktopEditors.conf ~/.config/onlyoffice
