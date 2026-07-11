# https://github.com/diodon-dev/diodon
# https://packages.debian.org/stable/utils/diodon

# install diodon
sudo apt-get install -y diodon

# set configs
gsettings set net.launchpad.Diodon.clipboard keep-clipboard-content true
gsettings set net.launchpad.Diodon.plugins active-plugins "['indicator']"

# override launcher to hide icon from start menu
mkdir -p ~/.local/share/applications
cp accessories/diodon/diodon.desktop ~/.local/share/applications
