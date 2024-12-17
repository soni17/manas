sudo apt-get install -y \
  git \
  wget \
  extrepo \
  dconf-cli

# install asdf version manager
if ! asdf version
then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  . "$HOME/.asdf/asdf.sh"
fi

# install flatpak and flathub repo
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
