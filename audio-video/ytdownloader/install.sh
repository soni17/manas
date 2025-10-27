# https://ytdn.netlify.app
# https://github.com/aandrew-me/ytDownloader

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="YTDownloader_Linux.deb"

# download installer
wget -q https://github.com/aandrew-me/ytDownloader/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
