# https://github.com/cboxdoerfer/fsearch

# install
sudo apt-get install -y fsearch

# config file
mkdir -p ~/.config/fsearch
cp system/fsearch/fsearch.conf ~/.config/fsearch

# launcher icon
mkdir -p ~/.local/share/applications
cp system/fsearch/io.github.cboxdoerfer.FSearch* ~/.local/share/applications