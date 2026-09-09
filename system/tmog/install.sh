# https://tmog.org

# get installer filename
FILENAME=$(curl -s https://tmog.org | grep /downloads | grep .deb | cut -d / -f 3 | sed 's/"//')

# download installer
wget -q https://tmog.org/downloads/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME
