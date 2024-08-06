# https://github.com/marktext/marktext

# download and install
LATEST_VERSION=$(curl -s "https://api.github.com/repos/marktext/marktext/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="marktext-amd64.deb"
wget -q https://github.com/marktext/marktext/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME

# settings
mkdir -p ~/.config/marktext
cp apps-development/marktext/preferences.json ~/.config/marktext
