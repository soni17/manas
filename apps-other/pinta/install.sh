# https://www.pinta-project.com/releases/

flatpak install flathub --assumeyes --system com.github.PintaProject.Pinta

# settings file
mkdir -p ~/.var/app/com.github.PintaProject.Pinta/config/Pinta
cp apps-other/pinta/settings.xml ~/.var/app/com.github.PintaProject.Pinta/config/Pinta
