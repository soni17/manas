# https://devtoys.app
# https://github.com/DevToys-app

# installer filename
FILENAME="devtoys_linux_x64.deb"

# latest version
VERSIONS=$(curl -s "https://api.github.com/repos/DevToys-app/DevToys/releases" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=$( echo $VERSIONS | cut -d ' ' -f 1)

# download installer
wget -q https://github.com/DevToys-app/DevToys/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME
