# https://github.com/bottlesdevs/Bottles

# install bottles
flatpak install flathub -y --system com.usebottles.bottles

# allow bottles to create desktop entries
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications

# launcher icon
mkdir ~/.local/share/applications
cp apps-system/bottles/com.usebottles.bottles* ~/.local/share/applications
