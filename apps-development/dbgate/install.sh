# https://dbgate.org/download/

# download and install
wget -q https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.deb -O /tmp/dbgate-latest.deb
sudo apt install -y /tmp/dbgate-latest.deb
sudo rm /tmp/dbgate-latest.deb

# copy configs file
mkdir -p ~/.dbgate
cp apps-development/dbgate/settings.json ~/.dbgate
