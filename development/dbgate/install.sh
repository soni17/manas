# https://dbgate.org
# https://github.com/dbgate/dbgate

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/dbgate/dbgate/releases/latest | grep browser_download_url | grep deb | grep amd64 |  cut -d '"' -f 4)
FILENAME="/tmp/dbgate.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.dbgate
cp development/dbgate/settings.json ~/.dbgate
