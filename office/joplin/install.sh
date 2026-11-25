# https://joplinapp.org
# https://github.com/laurent22/joplin

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/laurent22/joplin/releases/latest | grep browser_download_url | grep deb | cut -d '"' -f 4)
FILENAME="/tmp/joplin.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.config/joplin-desktop
cp office/joplin/userchrome.css ~/.config/joplin-desktop
