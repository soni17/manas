# install dependency
sudo apt-get install -y git &> /dev/null

# download repo
echo "downloading Manas..."
git clone git@github.com:soni17/manas.git ~/.local/share/manas &> /dev/null

# start installation
~/.local/share/manas/manas install-all
