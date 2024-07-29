# https://software.opensuse.org//download.html?project=home%3Acboxdoerfer&package=fsearch#manualDebian

# add repository
echo 'deb http://download.opensuse.org/repositories/home:/cboxdoerfer/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:cboxdoerfer.list
curl -fsSL https://download.opensuse.org/repositories/home:cboxdoerfer/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_cboxdoerfer.gpg > /dev/null

# install
sudo apt update
sudo apt install -y fsearch

# config file
mkdir -p ~/.config/fsearch
cp apps-system/fsearch/fsearch.conf ~/.config/fsearch

# panel icon
cp apps-system/fsearch/io.github.cboxdoerfer.FSearch* ~/.local/share/applications
