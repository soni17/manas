# https://librewolf.net/installation/debian/

# add repository
sudo extrepo enable librewolf

# install
sudo apt-get update -y
sudo apt-get install librewolf -y

# config file
mkdir -p ~/.librewolf
cp web-browsers/librewolf/librewolf.overrides.cfg ~/.librewolf
