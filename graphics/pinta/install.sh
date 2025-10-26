# https://www.pinta-project.com
# https://github.com/PintaProject/Pinta

# install
flatpak install flathub -y --system com.github.PintaProject.Pinta

# add launcher icon
mkdir -p ~/.local/share/applications
cp graphics/pinta/com.github.Pinta* ~/.local/share/applications
