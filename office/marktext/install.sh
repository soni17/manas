# https://marktext.me
# https://github.com/marktext/marktext

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/marktext/marktext/releases/latest | grep browser_download_url  | grep deb | grep -v arm64 | grep -v debug | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/marktext.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.config/marktext
cp office/marktext/preferences.json ~/.config/marktext

# override launcher to change category
mkdir -p ~/.local/share/applications
cp office/marktext/marktext.desktop ~/.local/share/applications
