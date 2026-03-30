# https://joplinapp.org
# https://github.com/laurent22/joplin

# add repository
sudo extrepo enable joplin
sudo apt-get update -y

# install
sudo apt-get install -y joplin

# add config file
mkdir -p ~/.config/joplin-desktop
cp office/joplin/userchrome.css ~/.config/joplin-desktop
