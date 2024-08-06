# https://github.com/jgraph/drawio-desktop

LATEST_VERSION=$(curl -s "https://api.github.com/repos/jgraph/drawio-desktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="drawio-amd64-${LATEST_VERSION:1}.deb"

# download and install
wget -q https://github.com/jgraph/drawio-desktop/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME
