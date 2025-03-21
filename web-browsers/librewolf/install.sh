# https://librewolf.net

# add repository
sudo apt-get install -y extrepo
sudo extrepo enable librewolf
sudo apt-get update -y

# install
sudo apt-get install librewolf -y

# config file
mkdir -p ~/.librewolf
cp web-browsers/librewolf/librewolf.overrides.cfg ~/.librewolf
