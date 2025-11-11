# https://github.com/microsoft/edit

# get latest version and filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/microsoft/edit/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="edit-${LATEST_VERSION:1}-x86_64-linux-gnu.tar.zst"

# download archive
wget -q https://github.com/microsoft/edit/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# uncompress archive
tar --zstd -xvf /tmp/$FILENAME

# move binary to /usr/bin and rename as msedit
sudo mv /tmp/edit /usr/bin/msedit
