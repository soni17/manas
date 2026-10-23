# https://getartcraft.com/apps/pdfcraft
# https://github.com/storytold/pdfcraft

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/storytold/pdfcraft/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="pdfcraft-${LATEST_VERSION:1}-linux-x86_64.deb"

# download installer
wget -q https://github.com/storytold/pdfcraft/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to change category
mkdir -p ~/.local/share/applications
cp office/pdfcraft/ai.storyteller.pdfcraft.desktop ~/.local/share/applications
