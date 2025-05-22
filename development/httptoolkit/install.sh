# https://httptoolkit.com/
# https://github.com/httptoolkit/httptoolkit-desktop

# get installer filename and version
VERSIONS=$(curl -s "https://api.github.com/repos/httptoolkit/httptoolkit-desktop/releases" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=$( echo $VERSIONS | cut -d ' ' -f 1)
LATEST_VERSION_NUMBER=$(echo ${LATEST_VERSION:1} | cut -d '-' -f 1)
FILENAME="HttpToolkit-${LATEST_VERSION_NUMBER}-x64.deb"

# download installer
wget -q https://github.com/httptoolkit/httptoolkit-desktop/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add launcher icon that fixes slow startup
mkdir -p ~/.local/share/applications
cp development/httptoolkit/httptoolkit.desktop ~/.local/share/applications
