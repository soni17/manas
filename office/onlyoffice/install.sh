# https://www.onlyoffice.com
# https://github.com/ONLYOFFICE/DesktopEditors

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/ONLYOFFICE/DesktopEditors/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/onlyoffice.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.config/onlyoffice
cp office/onlyoffice/DesktopEditors.conf ~/.config/onlyoffice
