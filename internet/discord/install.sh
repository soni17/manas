# https://discord.com

# set filename
FILENAME=discord-installer.deb

# download installer
wget -q "https://discord.com/api/download?platform=linux&format=deb" -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
