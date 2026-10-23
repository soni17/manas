# https://github.com/wavetermdev/waveterm

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/wavetermdev/waveterm/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="waveterm-linux-amd64-${LATEST_VERSION:1}.deb"

# download installer
wget -q https://github.com/wavetermdev/waveterm/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to change category
mkdir -p ~/.local/share/applications
cp system/waveterm/waveterm.desktop ~/.local/share/applications
