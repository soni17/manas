# https://standardnotes.com
# https://github.com/standardnotes/app

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/standardnotes/app/releases/latest" | grep -Po '"tag_name": "@standardnotes/desktop@\K[^"]*')
FILENAME=standard-notes-${LATEST_VERSION}-linux-amd64.deb

# download installer
wget -q https://github.com/standardnotes/app/releases/download/@standardnotes/desktop@${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
