# https://getartcraft.com/apps/photocraft
# https://github.com/storytold/photocraft

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/storytold/photocraft/releases/latest | grep browser_download_url | grep .deb | grep x86 | grep -v asc | cut -d '"' -f 4)
FILENAME="/tmp/photocraft.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher
cp graphics/photocraft/ai.storyteller.photo* ~/.local/share/applications
