# https://librewolf.net/installation/debian/

# add repository
sudo extrepo enable librewolf

# install librewolf
sudo apt-get update -y
sudo apt-get install librewolf -y

# config file
mkdir -p ~/.librewolf
cp apps-other/librewolf/librewolf.overrides.cfg ~/.librewolf
