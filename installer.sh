# update and upgrade
sudo apt update -y
sudo apt full-upgrade -y  
sudo apt dist-upgrade -y
sudo apt autoremove -y

# uninstall unused packages
sudo apt purge gnome-keyring fonts-noto seahorse firefox-esr* gimp* goldendict mlterm mlterm-tiny xterm xiterm+thai libreoffice* mysql-common orca mate-applet-brisk-menu mate-applets mate-utils wswedish wportuguese wpolish wnorwegian wngerman witalian wdutch wdanish wcatalan wbulgarian wbrazilian ibrazilian ibulgarian icatalan idanish idutch ihungarian iitalian ilithuanian ingerman inorwegian ipolish iportuguese irussian task-amharic-desktop task-amharic task-arabic-desktop task-arabic task-asturian-desktop task-asturian task-basque-desktop task-basque task-belarusian-desktop task-belarusian task-bengali-desktop task-bengali task-bosnian-desktop task-bosnian task-brazilian-portuguese-desktop task-brazilian-portuguese task-bulgarian-desktop task-bulgarian task-catalan-desktop task-catalan task-chinese-s-desktop task-chinese-s task-chinese-t-desktop task-chinese-t task-croatian-desktop task-croatian task-cyrillic-desktop task-cyrillic task-czech-desktop task-czech task-danish-desktop task-danish task-dutch-desktop task-dutch task-dzongkha-desktop task-esperanto-desktop task-esperanto task-estonian-desktop task-estonian task-finnish-desktop task-finnish task-galician-desktop task-galician task-georgian-desktop task-german-desktop task-german task-greek-desktop task-greek task-gujarati-desktop task-gujarati task-hebrew-desktop task-hebrew task-hindi-desktop task-hindi task-hungarian-desktop task-hungarian task-icelandic-desktop task-icelandic task-indonesian-desktop task-irish-desktop task-irish task-italian-desktop task-italian task-japanese-desktop task-japanese task-kannada-desktop task-kazakh-desktop task-kazakh task-khmer-desktop task-khmer task-korean-desktop task-korean task-kurdish-desktop task-kurdish task-latvian-desktop task-latvian task-lithuanian-desktop task-lithuanian task-macedonian-desktop task-macedonian task-malayalam-desktop task-malayalam task-marathi-desktop task-marathi task-nepali-desktop task-northern-sami-desktop task-northern-sami task-norwegian-desktop task-norwegian task-persian-desktop task-persian task-polish-desktop task-polish task-portuguese-desktop task-portuguese task-punjabi-desktop task-punjabi task-romanian-desktop task-romanian task-russian-desktop task-russian task-serbian-desktop task-serbian task-sinhala-desktop task-slovak-desktop task-slovak task-slovenian-desktop task-slovenian task-south-african-english-desktop task-swedish-desktop task-swedish task-tagalog task-tamil-desktop task-tamil task-telugu-desktop task-telugu task-thai-desktop task-thai task-turkish-desktop task-turkish task-ukrainian-desktop task-ukrainian task-uyghur-desktop task-vietnamese-desktop task-welsh-desktop task-welsh task-xhosa-desktop aspell-am aspell-ar-large aspell-ar aspell-bg aspell-ca aspell-cs aspell-cy aspell-da aspell-de aspell-el aspell-eo aspell-et aspell-eu aspell-fa aspell-ga aspell-gl-minimos aspell-he aspell-hr aspell-hu aspell-is aspell-it aspell-kk aspell-ku aspell-lt aspell-lv aspell-nl aspell-no aspell-pl aspell-pt-br aspell-pt-pt aspell-ro aspell-ru aspell-sk aspell-sl aspell-sv aspell-tl myspell-eo myspell-et myspell-fa myspell-ga myspell-he myspell-nb myspell-nn myspell-sk hunspell-ar hunspell-be hunspell-bg hunspell-bs hunspell-ca hunspell-cs hunspell-da hunspell-de-at hunspell-de-ch hunspell-de-de hunspell-el hunspell-eu hunspell-gl hunspell-gu hunspell-hi hunspell-hr hunspell-hu hunspell-id hunspell-is hunspell-it hunspell-kk hunspell-kmr hunspell-ko hunspell-lt hunspell-lv hunspell-ne hunspell-nl hunspell-pl hunspell-pt-br hunspell-pt-pt hunspell-ro hunspell-ru hunspell-si hunspell-sl hunspell-sr hunspell-sv hunspell-te hunspell-th hunspell-vi -y
sudo apt autoremove -y
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y

# install packages from Debian repo
sudo apt install git adb wget curl flatpak gnome-screenshot gnome-software gnome-software-plugin-flatpak cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut chromium webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo gufw redshift blueman htop btop ncdu gucharmap dconf-cli ayatana-indicator-application ayatana-indicator-common ayatana-indicator-messages ayatana-indicator-notifications ayatana-indicator-power ayatana-indicator-printers ayatana-indicator-sound mate-indicator-applet mate-indicator-applet-common libreoffice-writer libreoffice-gtk3 lsb-release mate-dock-applet neofetch lshw tldr bat transmission fontforge cabextract fonts-crosextra-caladea fonts-crosextra-carlito -y

# install flatpak apps
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.SimpleScan -y
flatpak install flathub io.podman_desktop.PodmanDesktop -y
flatpak install flathub com.jgraph.drawio.desktop -y

# install packages from files
sudo apt install ./packages/pinta_1.6-2.1_all.deb -y
sudo apt install ./packages/dbgate-latest.deb -y
sudo apt install ./packages/humanity-icon-theme_0.6.10_all.deb -y 
sudo apt install ./packages/ubuntu-mate-icon-themes_16.04.6_all.deb -y
sudo apt install ./packages/ubuntu-mate-themes_16.04.6_all.deb -y
sudo apt install ./packages/ubuntu-mono_14.04+16.04.20160415-0ubuntu1_all.deb -y
sudo apt install ./packages/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb -y


# ----------------------settings-------------------------------

# enable firewall
sudo ufw enable

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
cp wallpapers/beach-rocks.jpg ~/Pictures
cp wallpapers/os-x-yosemite.jpg ~/Pictures
cp wallpapers/sunset.jpg ~/Pictures
cp wallpapers/mountains.jpg ~/Pictures
cp wallpapers/dessert.jpg ~/Pictures
cp wallpapers/retro80s.jpg ~/Pictures

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

# install microsoft fonts
sudo apt install ttf-mscorefonts-installer -y
sudo bash settings/ttf-vista-fonts-installer.sh
sudo bash settings/ttf-ms-tahoma-installer.sh

