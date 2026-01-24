# https://httptoolkit.com
# https://github.com/httptoolkit/httptoolkit-desktop

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/httptoolkit/httptoolkit-desktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="HttpToolkit-${LATEST_VERSION:1}-x64.deb"

# download installer
wget -q https://github.com/httptoolkit/httptoolkit-desktop/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to fix slow startup
cp development/httptoolkit/httptoolkit.desktop ~/.local/share/applications
