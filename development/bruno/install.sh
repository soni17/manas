# https://www.usebruno.com
# https://github.com/usebruno/bruno

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/usebruno/bruno/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="bruno_${LATEST_VERSION:1}_amd64_linux.deb"

# download installer
wget -q https://github.com/usebruno/bruno/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
