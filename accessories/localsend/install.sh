# https://localsend.org
# https://github.com/localsend/localsend

# get installer filename and version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="LocalSend-${LATEST_VERSION:1}-linux-x86-64.deb"

# download installer
wget -q https://github.com/localsend/localsend/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
