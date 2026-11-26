# https://ulauncher.io
# https://github.com/Ulauncher/Ulauncher

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest | grep browser_download_url | grep deb | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/ulauncher.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.config/ulauncher
cp accessories/ulauncher/settings.json ~/.config/ulauncher

# autostart
mkdir -p ~/.config/autostart/
cp accessories/ulauncher/ulauncher.desktop ~/.config/autostart
