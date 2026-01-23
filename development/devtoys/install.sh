# https://devtoys.app
# https://github.com/DevToys-app/DevToys

# get latest version and installer filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/DevToys-app/DevToys/releases" | grep -Po '"tag_name": "\K[^"]*' | head -n 1)
FILENAME="devtoys_linux_x64.deb"

# download installer
wget -q https://github.com/DevToys-app/DevToys/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME
