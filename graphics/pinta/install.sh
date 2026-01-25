# https://www.pinta-project.com
# https://github.com/PintaProject/Pinta

# install
flatpak install flathub -y --system com.github.PintaProject.Pinta

# add config file
mkdir -p ~/.var/app/com.github.PintaProject.Pinta/config/Pinta
cp graphics/pinta/settings.xml ~/.var/app/com.github.PintaProject.Pinta/config/Pinta

# override launcher
mkdir -p ~/.local/share/applications
cp graphics/pinta/com.github.Pinta* ~/.local/share/applications
