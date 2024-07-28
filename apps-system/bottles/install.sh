# install bottles
flatpak install flathub --assumeyes --system com.usebottles.bottles

# allow bottles to create desktop entries
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications

# panel icon
cp installers/bottles/com.usebottles.bottles* ~/.local/share/applications
