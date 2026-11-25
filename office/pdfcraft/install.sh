# https://getartcraft.com/apps/pdfcraft
# https://github.com/storytold/pdfcraft

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/storytold/pdfcraft/releases/latest | grep browser_download_url | grep deb | grep x86 | grep -v asc | cut -d '"' -f 4)
FILENAME="/tmp/pdfcraft.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher to change category
mkdir -p ~/.local/share/applications
cp office/pdfcraft/ai.storyteller.pdfcraft.desktop ~/.local/share/applications

# add config file
mkdir -p ~/.config/pdfcraft
cp office/pdfcraft/app.ron ~/.config/pdfcraft
