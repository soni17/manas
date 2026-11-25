# https://github.com/vjousse/concentre

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/vjousse/concentre/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)
FILENAME="/tmp/pomodorolm.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# add config file
mkdir -p ~/.config/pomodorolm
cp accessories/pomodorolm/config.toml ~/.config/pomodorolm

# override launcher
mkdir -p ~/.local/share/applications
cp accessories/pomodorolm/pomodorolm.desktop ~/.local/share/applications
