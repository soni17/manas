# https://desktop-plus.org/
# https://github.com/desktop-plus/desktop-plus

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/desktop-plus/desktop-plus/releases/latest | grep browser_download_url | grep deb | grep x86 | cut -d '"' -f 4)
FILENAME="/tmp/github-desktop-plus.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher to fix slow startup
mkdir -p ~/.local/share/applications
cp development/github-desktop/desktop-plus.desktop ~/.local/share/applications
