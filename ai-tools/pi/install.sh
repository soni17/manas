# https://pi.dev/
# https://github.com/earendil-works/pi

# get download url of latest release
URL=$(curl -s https://api.github.com/repos/earendil-works/pi/releases/latest | grep browser_download_url | grep linux | grep x64 | cut -d '"' -f 4)

# download latest release for linux x64
curl -sL -o /tmp/pi-linux-x64.tar.gz $URL

# extract tar in /opt folder
sudo tar -xf /tmp/pi-linux-x64.tar.gz -C /opt

# delete installer
sudo rm /tmp/pi-linux-x64.tar.gz

# create link in /usr/bin folder
sudo ln -s /opt/pi/pi /usr/bin/pi
