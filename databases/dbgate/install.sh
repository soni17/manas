# https://dbgate.org

# installer filename
FILENAME="dbgate-latest.deb"

# download installer
wget -q https://github.com/dbgate/dbgate/releases/latest/download/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
sudo rm /tmp/$FILENAME

# add config file
mkdir -p ~/.dbgate
cp databases/dbgate/settings.json ~/.dbgate
