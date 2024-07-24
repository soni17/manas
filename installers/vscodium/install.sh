# https://vscodium.com/#install-on-debian-ubuntu-deb-package

# add repository
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

# install
sudo apt update
sudo apt install -y codium

# install extensions
codium --install-extension akamud.vscode-theme-onedark
codium --install-extension janicweber.soft-grey-theme
codium --install-extension file-icons.file-icons
codium --install-extension esbenp.prettier-vscode
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension jeanp413.open-remote-ssh
codium --install-extension mbessey.vscode-rufo
codium --install-extension ritwickdey.liveserver
codium --install-extension vortizhe.simple-ruby-erb
codium --install-extension zaaack.markdown-editor
codium --install-extension svelte.svelte-vscode

# config file
mkdir -p ~/.config/VSCodium/User
cp installers/vscodium/settings.json ~/.config/VSCodium/User
