# https://vscodium.com/#install-on-debian-ubuntu-deb-package

# remove repository if it's already there
sudo rm -f /etc/apt/sources.list.d/vscodium.list
sudo rm -f /usr/share/keyrings/vscodium-archive-keyring.gpg

# add repository
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

# install
sudo apt-get update
sudo apt-get install -y codium

# install extensions
codium --install-extension akamud.vscode-theme-onedark
codium --install-extension janicweber.soft-grey-theme
codium --install-extension file-icons.file-icons
codium --install-extension esbenp.prettier-vscode
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension vortizhe.simple-ruby-erb
codium --install-extension mbessey.vscode-rufo
codium --install-extension svelte.svelte-vscode
codium --install-extension zaaack.markdown-editor
codium --install-extension jeanp413.open-remote-ssh
codium --install-extension ritwickdey.liveserver
codium --install-extension arturock.gitstash

# config file
mkdir -p ~/.config/VSCodium/User
cp development/vscodium/settings.json ~/.config/VSCodium/User
