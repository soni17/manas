# https://freetubeapp.io
# https://github.com/FreeTubeApp/FreeTube

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/FreeTubeApp/FreeTube/releases" | grep -Po '"tag_name": "\K[^"]*' | head -n 1)
LATEST_VERSION_NUMBER=$(echo $LATEST_VERSION | tr -d 'v' | tr -d '\-beta')
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

# override launcher
mkdir -p ~/.local/share/applications
cp audio-video/freetube/freetube* ~/.local/share/applications
