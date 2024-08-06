# https://dbgate.org/download/

# download and install
FILENAME="dbgate-latest.deb"
wget -q https://github.com/dbgate/dbgate/releases/latest/download/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
sudo rm /tmp/$FILENAME

# copy configs file
mkdir -p ~/.dbgate
cp apps-development/dbgate/settings.json ~/.dbgate
