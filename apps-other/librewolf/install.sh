# https://librewolf.net/installation/debian/

sudo extrepo enable librewolf
sudo apt-get update -y
sudo apt-get install librewolf -y

# config file
mkdir -p ~/.librewolf
cp apps-other/librewolf/librewolf.overrides.cfg ~/.librewolf
