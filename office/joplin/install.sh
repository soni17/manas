# https://joplinapp.org
# https://github.com/laurent22/joplin

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/laurent22/joplin/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="joplin-${LATEST_VERSION:1}.deb"

# download installer
wget -q https://github.com/laurent22/joplin/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/joplin-desktop
cp office/joplin/userchrome.css ~/.config/joplin-desktop
