# https://github.com/sinelaw/fresh

# get latest version and filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/sinelaw/fresh/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="fresh-editor_${LATEST_VERSION:1}-1_amd64.deb"

# download installer
wget -q https://github.com/sinelaw/fresh/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/fresh
cp development/fresh-editor/config.json ~/.config/fresh
