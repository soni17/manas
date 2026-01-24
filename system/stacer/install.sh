# https://oguzhaninan.github.io/Stacer-Web/
# https://github.com/oguzhaninan/Stacer

# installer filename
FILENAME="stacer_1.1.0_amd64.deb"

# download installer
wget -q https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher
cp system/stacer/stacer* ~/.local/share/applications
