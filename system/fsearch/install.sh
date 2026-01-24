# https://github.com/cboxdoerfer/fsearch

# install
sudo apt-get install -y fsearch

# add config file
mkdir -p ~/.config/fsearch
cp system/fsearch/fsearch.conf ~/.config/fsearch

# override launcher
cp system/fsearch/io.github.cbox* ~/.local/share/applications
