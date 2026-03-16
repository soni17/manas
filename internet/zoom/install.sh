# https://www.zoom.com
# https://zoom.us/download

# get installer filename and latest version
LATEST_VERSION=$(curl -sI https://zoom.us/client/latest/zoom_amd64.deb | grep -i location | sed -E 's/.*prod\/([^\/]+)\/.*/\1/')
FILENAME="zoom_amd64.deb"

# download installer
wget -q https://zoom.us/client/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
