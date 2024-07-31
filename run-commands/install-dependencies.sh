sudo apt install -y \
  git \
  wget \
  curl \
  ca-certificates \
  dconf-cli

# install asdf version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cp bash/asdfrc ~/.asdfrc
. "$HOME/.asdf/asdf.sh"

# install flatpak and flathub repo
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
