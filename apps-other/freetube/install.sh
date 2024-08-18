# https://github.com/FreeTubeApp/FreeTube

VERSIONS=$(curl -s "https://api.github.com/repos/FreeTubeApp/FreeTube/releases" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=$( echo $VERSIONS | cut -d ' ' -f 1)
LATEST_VERSION_NUMBER=$(echo ${LATEST_VERSION:1} | cut -d '-' -f 1)
FILENAME="freetube_${LATEST_VERSION_NUMBER}_amd64.deb"

# download and install
wget -q https://github.com/FreeTubeApp/FreeTube/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME

# settings file
mkdir -p ~/.config/FreeTube
cp apps-other/freetube/settings.db ~/.config/FreeTube
