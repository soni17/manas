# https://github.com/cboxdoerfer/fsearch
# https://software.opensuse.org//download.html?project=home%3Acboxdoerfer&package=fsearch#manualDebian

# remove repository if it's already there
sudo rm -f /etc/apt/trusted.gpg.d/home_cboxdoerfer.gpg
sudo rm -f /etc/apt/sources.list.d/home:cboxdoerfer.list

# add repository
echo 'deb http://download.opensuse.org/repositories/home:/cboxdoerfer/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:cboxdoerfer.list
curl -fsSL https://download.opensuse.org/repositories/home:cboxdoerfer/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_cboxdoerfer.gpg > /dev/null

# install
sudo apt-get update
sudo apt-get install -y fsearch

# config file
mkdir -p ~/.config/fsearch
cp apps-system/fsearch/fsearch.conf ~/.config/fsearch
