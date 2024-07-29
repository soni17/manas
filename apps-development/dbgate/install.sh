#https://dbgate.org/download/

# download and install
wget https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.deb
sudo apt install -y ./dbgate-latest.deb
sudo rm ./dbgate-latest.deb

# copy configs file
mkdir -p ~/.dbgate
cp apps-development/dbgate/settings.json ~/.dbgate
