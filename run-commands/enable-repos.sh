# enable all debian repositories
sudo apt-get update -y
sudo apt-get install -y software-properties-gtk
sudo add-apt-repository -y -s main contrib non-free non-free-firmware
sudo apt-get update -y

# add flathub repository
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install extrepo (repos vetted by debian)
# enable non-free repos
sudo apt-get install -y extrepo
sudo sed -i "s/# - contrib/- contrib/" /etc/extrepo/config.yaml
sudo sed -i "s/# - non-free/- non-free/" /etc/extrepo/config.yaml

# install asdf version manager
LATEST_VERSION=$(curl -s "https://api.github.com/repos/asdf-vm/asdf/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME=asdf-${LATEST_VERSION}-linux-386.tar.gz
wget -q https://github.com/asdf-vm/asdf/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME
cd /tmp
tar -xvzf /tmp/$FILENAME
sudo mv asdf /bin
sudo rm $FILENAME
cd -

# appimage dependencies
sudo apt-get install -y \
  fuse \
  libfuse2
