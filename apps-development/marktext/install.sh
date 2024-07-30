# https://github.com/marktext/marktext

flatpak install flathub -y --system com.github.marktext.marktext

# settings
mkdir -p ~/.var/app/com.github.marktext.marktext/config/marktext
cp apps-development/marktext/preferences.json ~/.var/app/com.github.marktext.marktext/config/marktext
