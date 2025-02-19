# https://www.sejda.com/desktop

# get installer filename and latest version
VERSION=$(curl https://www.sejda.com/desktop | grep linux | grep -o [0-9].[0-9].[0-9])
FILENAME=sejda-desktop_${VERSION}_amd64.deb

# download installer
wget -q https://downloads.sejda-cdn.com/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME
