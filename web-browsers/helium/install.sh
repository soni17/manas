# https://arvaidasre.github.io/helium-browser-deb
# https://github.com/arvaidasre/helium-browser-deb

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/arvaidasre/helium-browser-deb/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="helium-browser_${LATEST_VERSION}_amd64.deb"

# download installer
wget -q https://github.com/arvaidasre/helium-browser-deb/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to fix slow startup
mkdir -p ~/.local/share/applications
cp web-browsers/helium/helium.desktop ~/.local/share/applications
