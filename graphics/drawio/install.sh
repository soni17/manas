# https://www.drawio.com
# https://github.com/jgraph/drawio-desktop

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/jgraph/drawio-desktop/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)
FILENAME="/tmp/drawio.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME
