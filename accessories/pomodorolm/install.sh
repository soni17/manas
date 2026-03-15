# https://github.com/vjousse/pomodorolm

# get installer filename and latest version
LATEST_VERSION_FULL=$(curl -s "https://api.github.com/repos/vjousse/pomodorolm/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
LATEST_VERSION=$(curl -s "https://api.github.com/repos/vjousse/pomodorolm/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | cut -d 'v' -f 2)
FILENAME="pomodorolm_${LATEST_VERSION}_amd64.deb"

# download installer
wget -q https://github.com/vjousse/pomodorolm/releases/download/${LATEST_VERSION_FULL}/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.config/pomodorolm
cp accessories/pomodorolm/config.toml ~/.config/pomodorolm

# override launcher
mkdir -p ~/.local/share/applications
cp accessories/pomodorolm/pomodorolm.desktop ~/.local/share/applications
