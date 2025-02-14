# https://www.onlyoffice.com
# https://helpcenter.onlyoffice.com/installation/desktop-install-ubuntu.aspx

# add repository
sudo extrepo enable onlyoffice-desktopeditors
sudo apt-get update -y

# install
sudo apt-get install -y onlyoffice-desktopeditors

# config file
mkdir -p ~/.config/onlyoffice
cp office/onlyoffice/DesktopEditors.conf ~/.config/onlyoffice
