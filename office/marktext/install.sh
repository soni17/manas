# https://github.com/marktext/marktext

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/marktext/marktext/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="marktext-amd64.deb"

# download installer
wget -q https://github.com/marktext/marktext/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/marktext
cp office/marktext/preferences.json ~/.config/marktext
