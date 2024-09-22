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

# stop script if OS is not Debian Mate 12 or higher
echo "checking OS version..."
source run-commands/check-os.sh

# error handling
source run-commands/error-handling.sh

# enable all debian repositories
echo "enabling all Debian repositories..."
source run-commands/enable-repos.sh 1> /dev/null 2>> /tmp/manas.log

# upgrade OS
echo "upgrading OS..."
source run-commands/upgrade-os.sh 1> /dev/null 2>> /tmp/manas.log

# uninstall bloat
echo "uninstalling bloat..."
source run-commands/uninstall-bloat.sh 1> /dev/null 2>> /tmp/manas.log

# install dependencies for installers
echo "installing dependencies..."
source run-commands/install-dependencies.sh 1> /dev/null 2>> /tmp/manas.log

# run installers
echo "installing apps..."
echo " "
source run-commands/run-installers.sh 

# cleanup
echo " "
echo "cleaning up..."
source run-commands/cleanup.sh 1> /dev/null 2>> /tmp/manas.log

# reboot
echo "$(tput setaf 2)Installation completed successfully."
echo "$(tput setaf 7)Rebooting computer in 10 seconds..."
echo ""
sleep 10; sudo reboot
