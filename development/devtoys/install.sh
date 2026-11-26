# https://devtoys.app
# https://github.com/DevToys-app/DevToys

# get latest version and installer filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/DevToys-app/DevToys/releases" | grep tag_name | head -n 1 | cut -d '"' -f 4)

# create installer filename
FILENAME="devtoys_linux_x64.deb"

# download installer
wget -q https://github.com/DevToys-app/DevToys/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME

# override launcher
mkdir -p ~/.local/share/applications
cp development/devtoys/devtoys.desktop ~/.local/share/applications
