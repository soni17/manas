ascii_art='
 __  __                       
|  \/  | ____ ____   ____ ___ 
| |\/| |/ _  |  _ \ / _  / __|
| |  | | (_| | | | | (_| \__ \
|_|  |_|\____|_| |_|\____|___/
'

echo "$(tput setaf 74) $ascii_art"
echo "$(tput setaf 7)Starting Installation..."
echo " "

# stop script if OS is not Debian Mate 12
source run-commands/check-os.sh 1> /dev/null 2>> /tmp/manas-errors.log

# error handling
source run-commands/error-handling.sh 1> /dev/null 2>> /tmp/manas-errors.log

# enable all debian repositories
echo "enabling all Debian repositories..."
source run-commands/enable-repos.sh 1> /dev/null 2>> /tmp/manas-errors.log

# upgrade OS
echo "upgrading OS..."
source run-commands/upgrade-os.sh 1> /dev/null 2>> /tmp/manas-errors.log

# uninstall bloat
echo "uninstalling bloat..."
source run-commands/uninstall-bloat.sh 1> /dev/null 2>> /tmp/manas-errors.log

# install dependencies for installers
echo "installing dependencies..."
source run-commands/install-dependencies.sh 1> /dev/null 2>> /tmp/manas-errors.log

# run installers
echo " "
echo "installing apps..."
source run-commands/run-installers.sh 

# cleanup
source run-commands/cleanup.sh 1> /dev/null 2>> /tmp/manas-errors.log

# reboot
echo ""
echo "$(tput setaf 2)Installation completed successfully."
echo "$(tput setaf 2)Rebooting computer in 10 seconds..."
echo ""
sleep 10; sudo reboot
