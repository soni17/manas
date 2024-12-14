# https://github.com/cboxdoerfer/fsearch

sudo apt-get install -y fsearch

# config file
mkdir -p ~/.config/fsearch
cp apps-system/fsearch/fsearch.conf ~/.config/fsearch

# launcher icon
mkdir ~/.local/share/applications
cp apps-system/fsearch/io.github.cboxdoerfer.FSearch* ~/.local/share/applications
