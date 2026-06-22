# https://www.sejda.com/desktop

# get installer filename and latest version
VERSION=$(curl 'https://www.sejda.com/desktop' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Connection: keep-alive' | grep amd64.deb | grep -o [0-9].[0-9].[0-9])
FILENAME=sejda-desktop_${VERSION}_amd64.deb

# download installer
wget -q https://downloads.sejda-cdn.com/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME
