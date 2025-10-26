# https://www.drawio.com
# https://github.com/jgraph/drawio-desktop

# get installer filename and latest version
# LATEST_VERSION=$(curl -s "https://api.github.com/repos/jgraph/drawio-desktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=v28.2.5
FILENAME="drawio-amd64-${LATEST_VERSION:1}.deb"

# download installer
wget -q https://github.com/jgraph/drawio-desktop/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
