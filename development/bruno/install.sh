# https://www.usebruno.com
# https://github.com/usebruno/bruno

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/usebruno/bruno/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/bruno.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME
