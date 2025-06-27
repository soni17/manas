# enable all debian repositories
if [ -f "/etc/apt/sources.list" ]; then
  sudo sed -i "s/main non-free-firmware/main non-free-firmware non-free contrib/g" /etc/apt/sources.list
fi

if [ -f "/etc/apt/sources.list.d/debian.sources" ]; then
  sudo sed -i "s/main non-free-firmware/main non-free-firmware non-free contrib/g" /etc/apt/sources.list.d/debian.sources
fi

sudo apt-get update -y

# add flathub repository
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# add mise-en-place repo
sudo install -dm 755 /etc/apt/keyrings
wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=amd64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt-get update -y
sudo apt-get install -y mise
mise settings add idiomatic_version_file_enable_tools ruby
mise settings add idiomatic_version_file_enable_tools python
mise settings add idiomatic_version_file_enable_tools node
