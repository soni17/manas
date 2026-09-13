# https://herdr.dev
# https://github.com/herdrdev/herdr

# get latest version and filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/herdrdev/herdr/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="herdr-linux-x86_64"

# download binary
wget -q https://github.com/herdrdev/herdr/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# make binary executable
chmod +x /tmp/$FILENAME

# copy files
sudo mv /tmp/$FILENAME /usr/bin/herdr
