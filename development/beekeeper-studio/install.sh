# https://www.beekeeperstudio.io
# https://github.com/beekeeper-studio/beekeeper-studio

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/beekeeper-studio/beekeeper-studio/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="beekeeper-studio_${LATEST_VERSION:1}_amd64.deb"

# download installer
wget -q https://github.com/beekeeper-studio/beekeeper-studio/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
