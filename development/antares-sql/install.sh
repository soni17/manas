# https://antares-sql.app
# https://github.com/antares-sql/antares

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/antares-sql/antares/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="Antares-${LATEST_VERSION:1}-linux_amd64.deb"

# download installer
wget -q https://github.com/antares-sql/antares/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
