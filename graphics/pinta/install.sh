# https://www.pinta-project.com
# https://github.com/PintaProject/Pinta

# install pinta 2.1.2 and lock version
flatpak install flathub -y --system com.github.PintaProject.Pinta
sudo flatpak update -y --commit=eb978f6ae82fc380b1c6b3a1ed7253a9f8f75115798274c4a71168ecc335ae9c com.github.PintaProject.Pinta
sudo flatpak mask com.github.PintaProject.Pinta

# settings file
mkdir -p ~/.var/app/com.github.PintaProject.Pinta/config/Pinta
cp graphics/pinta/settings.xml ~/.var/app/com.github.PintaProject.Pinta/config/Pinta

# launcher icon
mkdir -p ~/.local/share/applications
cp graphics/pinta/com.github.Pinta* ~/.local/share/applications
