# https://github.com/marktext/marktext

LATEST_VERSION=$(curl -s "https://api.github.com/repos/marktext/marktext/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

# download and install
wget -q https://github.com/marktext/marktext/releases/download/${LATEST_VERSION}/marktext-amd64.deb -O /tmp/marktext-amd64.deb
sudo apt-get install -y /tmp/marktext-amd64.deb
rm /tmp/marktext-amd64.deb

# settings
mkdir -p ~/.config/marktext
cp apps-development/marktext/preferences.json ~/.config/marktext
