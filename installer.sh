# update and upgrade
sudo apt update -y
sudo apt full-upgrade -y  
sudo apt dist-upgrade -y
sudo apt autoremove -y

# run uninstaller
bash uninstallers/uninstall-bloat.sh

# install packages from Debian repo
sudo apt install -y git adb wget curl flatpak gnome-screenshot gnome-software gnome-software-plugin-flatpak cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut chromium webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo gufw redshift blueman htop btop ncdu gucharmap dconf-cli ayatana-indicator-application ayatana-indicator-common ayatana-indicator-messages ayatana-indicator-notifications ayatana-indicator-power ayatana-indicator-printers ayatana-indicator-sound mate-indicator-applet mate-indicator-applet-common libreoffice-writer libreoffice-gtk3 lsb-release mate-dock-applet neofetch lshw tldr bat transmission fontforge cabextract fonts-crosextra-caladea fonts-crosextra-carlito autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev apt-transport-https libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

# uninstall additional pakcages
sudo apt purge -y libreoffice-math fontforge
sudo apt autoremove -y

# install flatpak apps
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.usebottles.bottles
flatpak install -y flathub io.freetubeapp.FreeTube
flatpak install -y flathub org.gnome.SimpleScan
flatpak install -y flathub io.podman_desktop.PodmanDesktop
flatpak install -y flathub com.jgraph.drawio.desktop
flatpak install -y flathub org.localsend.localsend_app
flatpak install -y flathub io.github.aandrew_me.ytdn

# install packages from files
sudo apt install -y ./packages/pinta_1.6-2.1_all.deb
sudo apt install -y ./packages/dbgate-latest.deb
sudo apt install -y ./packages/fsearch_0.2.3-1+3.5_amd64.deb
sudo apt install -y ./packages/humanity-icon-theme_0.6.10_all.deb
sudo apt install -y ./packages/ubuntu-mate-icon-themes_16.04.6_all.deb
sudo apt install -y ./packages/ubuntu-mate-themes_16.04.6_all.deb
sudo apt install -y ./packages/ubuntu-mono_14.04+16.04.20160415-0ubuntu1_all.deb
sudo apt install -y ./packages/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install unpackaged apps
cp -r packages/myapps ~

# install microsoft fonts
sudo apt install -y ttf-mscorefonts-installer
sudo bash settings/ttf-vista-fonts-installer.sh
sudo bash settings/ttf-ms-tahoma-installer.sh

# install rbenv and ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
eval "$(~/.rbenv/bin/rbenv init - bash)"
rbenv install 3.2.2
rbenv install 3.1.2
rbenv global 3.2.2
gem install rails
gem install rubocop
gem install rufo

# install nodenv and node
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(nodenv init - bash)"' >> ~/.bashrc
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init - bash)"
nodenv install 21.2.0
nodenv install 20.8.1
nodenv global 21.2.0

# install docker and repo
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker une

# install ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list
sudo apt update
sudo apt install -y ngrok

# install librewolf and repo
distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
sudo apt update
sudo apt install librewolf -y

# install Beekeeper Studio and repo
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg
sudo chmod go+r /usr/share/keyrings/beekeeper.gpg
echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null
sudo apt update
sudo apt install beekeeper-studio -y

# install vscodium and repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update
sudo apt install -y codium
codium --install-extension akamud.vscode-theme-onedark
codium --install-extension eamodio.gitlens
codium --install-extension esbenp.prettier-vscode
codium --install-extension file-icons.file-icons
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension janicweber.soft-grey-theme
codium --install-extension jeanp413.open-remote-ssh
codium --install-extension mbessey.vscode-rufo
codium --install-extension ms-azuretools.vscode-docker
codium --install-extension ritwickdey.liveserver
codium --install-extension vortizhe.simple-ruby-erb
cp settings/settings.json ~/.config/VSCodium/User/

# install Bruno and repo
sudo mkdir -p /etc/apt/keyrings
sudo gpg -k  
sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266 
echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list 
sudo apt update 
sudo apt install -y bruno

# install onlyoffice and repo
mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt update
sudo apt install -y onlyoffice-desktopeditors


# ----------------------settings-------------------------------

# enable firewall
sudo ufw enable

# open port for localsend app
sudo ufw allow 53317

# reduce timeout to 3 seconds during boot
# minimize splash screen at boot to show fewer logs
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/" /etc/default/grub
sudo sed -i "s/splash/unsplash loglevel=3/" /etc/default/grub
sudo update-grub

# fix for network-monitor applet not showing in panel
sudo sed -i "s/Exec=nm-applet/Exec=nm-applet --indicator/" /etc/xdg/autostart/nm-applet.desktop

# add terminal settings
dconf write /org/mate/terminal/profiles/default/background-color "'#000000000000'"
dconf write /org/mate/terminal/profiles/default/foreground-color "'#FFFFFFFFFFFF'"
dconf write /org/mate/terminal/profiles/default/background-type "'transparent'"
dconf write /org/mate/terminal/profiles/default/background-darkness 0.86
dconf write /org/mate/terminal/profiles/default/cursor-shape "'underline'"
dconf write /org/mate/terminal/profiles/default/cursor-blink-mode "'off'"
dconf write /org/mate/terminal/profiles/default/palette  "'#000000000000:#CCCC00000000:#4E4D9A9A0605:#C4C3A0A00000:#34346564A4A3:#7575504F7B7B:#060598979A9A:#D3D3D7D6CFCF:#555457565352:#EFEF29282928:#8A89E2E23434:#FCFBE9E84F4F:#72729F9ECFCF:#ADAC7F7EA8A8:#3434E2E2E2E2:#EEEDEEEDECEB'"
dconf write /org/mate/terminal/profiles/default/use-theme-colors false
dconf write /org/mate/terminal/profiles/default/allow-bold false
dconf write /org/mate/terminal/profiles/default/scrollback-unlimited true
dconf write /org/mate/terminal/profiles/default/use-system-font true

# copy wallpapers
cp wallpapers/* ~/Pictures

# add desktop icons
cp desktop/* ~/Desktop

# set theme settings
dconf write /org/mate/desktop/interface/gtk-theme "'TraditionalOk'"
dconf write /org/mate/marco/general/theme "'TraditionalOk'"
dconf write /org/mate/desktop/interface/icon-theme "'ubuntu-mono-light'"
hme=~
dconf write /org/mate/desktop/background/picture-filename "'$hme/Pictures/beach-rocks.jpg'"
dconf write /org/mate/marco/general/compositing-manager true
dconf write /org/mate/caja/preferences/always-use-location-entry true
dconf write /org/mate/pluma/display-right-margin false
dconf write /org/mate/screensaver/mode "'blank-only'"
dconf write /org/mate/screensaver/themes "@as []"
dconf write /org/mate/notification-daemon/theme "'slider'"
dconf write /org/mate/notification-daemon/popup-location "'bottom_right'"
dconf load /org/mate/panel/ < settings/dconf-panel

# set system font settings
dconf write /org/mate/desktop/interface/document-font-name "'Ubuntu 11'"
dconf write /org/mate/desktop/interface/font-name "'Ubuntu 11'"
dconf write /org/mate/caja/desktop/font "'Ubuntu 11'"
dconf write /org/mate/marco/general/titlebar-font "'Ubuntu Medium 11'"
dconf write /org/mate/desktop/interface/monospace-font-name "'Ubuntu Mono 13'"

# set screen temperature
mkdir ~/.config/autostart
cp settings/redshift.desktop ~/.config/autostart

# update and cleanup
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# purge residual-config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
