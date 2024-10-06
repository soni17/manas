# install dependency
sudo apt-get install -y git &> /dev/null

# remove if it's already there
rm -rf ~/.local/share/manas

# download repo
echo "downloading Manas..."
git clone https://github.com/soni17/manas.git ~/.local/share/manas &> /dev/null

# start installation
cd ~/.local/share/manas 
./manas install-all
