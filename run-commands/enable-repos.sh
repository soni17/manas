# enable all debian repositories
sudo apt-get update -y
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

# install mise-en-place (version manager)
sudo install -dm 755 /etc/apt/keyrings
wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt-get update -y
sudo apt-get install -y mise
