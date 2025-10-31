ascii_art='
 __  __                       
|  \/  | ____ ____   ____ ___ 
| |\/| |/ _  |  _ \ / _  / __|
| |  | | (_| | | | | (_| \__ \
|_|  |_|\____|_| |_|\____|___/
'

# prompt for sudo first
sudo echo -n ""

# start installation
echo -e "$(tput setaf 74) $ascii_art \n"
echo "$(tput setaf 7)Starting Installation..."

# stop script if OS is not Debian Mate 13
echo "checking OS version..."
source scripts/check-os.sh

# error handling
source scripts/error-handling.sh

# enable repositories
echo "adding repositories..."
source scripts/enable-repos.sh 1> /dev/null 2>> /tmp/manas.log

# upgrade OS
echo "upgrading OS..."
source scripts/upgrade-os.sh 1> /dev/null 2>> /tmp/manas.log

# uninstall bloat
echo "uninstalling bloat..."
source scripts/uninstall-bloat.sh 1> /dev/null 2>> /tmp/manas.log

# run installers
echo "installing apps..."
echo " "
source scripts/run-installers.sh

# cleanup
echo " "
echo "cleaning up..."
source scripts/cleanup.sh 1> /dev/null 2>> /tmp/manas.log

# reboot
echo "$(tput setaf 2)Installation completed successfully."
echo "$(tput setaf 7)Rebooting computer in 10 seconds..."
echo ""
sleep 10; sudo reboot
