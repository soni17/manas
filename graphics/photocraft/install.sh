# https://getartcraft.com/apps/photocraft
# https://github.com/storytold/photocraft

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/storytold/photocraft/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="photocraft-${LATEST_VERSION:1}-linux-x86_64.deb"

# download installer
wget -q https://github.com/storytold/photocraft/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

cp graphics/photocraft/ai.storyteller.photo* ~/.local/share/applications
