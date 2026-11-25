# https://pi.dev/
# https://github.com/earendil-works/pi

# get download url of latest release and crate filename
URL=$(curl -s https://api.github.com/repos/earendil-works/pi/releases/latest | grep browser_download_url | grep linux | grep x64 | cut -d '"' -f 4)
FILENAME="/tmp/pi-linux.tar.gz"

# download latest release for linux x64
curl -sL $URL -o $FILENAME

# extract tar in /opt folder
sudo tar -xf $FILENAME -C /opt

# delete installer
sudo rm $FILENAME

# create link in /usr/bin folder
sudo ln -s /opt/pi/pi /usr/bin/pi

# add icon and launcher
sudo cp ai-tools/pi/pi-logo.svg /usr/share/icons
sudo cp ai-tools/pi/pi.desktop /usr/share/applications
