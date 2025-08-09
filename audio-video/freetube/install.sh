# https://freetubeapp.io
# https://github.com/FreeTubeApp/FreeTube

# get installer filename and latest version
VERSIONS=$(curl -s "https://api.github.com/repos/FreeTubeApp/FreeTube/releases" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=$( echo $VERSIONS | cut -d ' ' -f 1)
LATEST_VERSION_NUMBER=$(echo ${LATEST_VERSION:1} | cut -d '-' -f 1)
FILENAME="freetube_${LATEST_VERSION_NUMBER}_beta_amd64.deb"

# download installer
wget -q https://github.com/FreeTubeApp/FreeTube/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/FreeTube
cp audio-video/freetube/settings.db ~/.config/FreeTube

# add launcher icon
mkdir -p ~/.local/share/applications
cp audio-video/freetube/freetube* ~/.local/share/applications
