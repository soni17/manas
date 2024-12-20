# https://dbgate.org/download/

# download
FILENAME="dbgate-latest.deb"
wget -q https://github.com/dbgate/dbgate/releases/latest/download/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME
sudo rm /tmp/$FILENAME

# copy configs file
mkdir -p ~/.dbgate
cp databases/dbgate/settings.json ~/.dbgate
