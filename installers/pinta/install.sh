flatpak install flathub --assumeyes --system com.github.PintaProject.Pinta

# settings file
mkdir -p ~/.var/app/com.github.PintaProject.Pinta/config/Pinta
cp installers/pinta/settings.xml ~/.var/app/com.github.PintaProject.Pinta/config/Pinta

# panel icon
cp installers/pinta/com.github.PintaProject.Pinta.desktop ~/.local/share/applications
