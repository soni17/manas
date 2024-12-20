# https://github.com/diodon-dev/diodon
# https://packages.debian.org/stable/utils/diodon

# install diodon
sudo apt-get install -y diodon

# configs
gsettings set net.launchpad.Diodon.clipboard keep-clipboard-content true
gsettings set net.launchpad.Diodon.plugins active-plugins "['indicator']"
