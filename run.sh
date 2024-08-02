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

# stop execution if there's an error
set -e

# stop execution if OS is not Debian Mate 12 or later
source run-commands/check-os.sh

# enable all debian repositories
source run-commands/enable-repos.sh

# upgrade OS
source run-commands/upgrade-os.sh

# uninstall bloat
source run-commands/uninstall-bloat.sh

# install dependencies for installers
source run-commands/install-dependencies.sh

# update bashrc file
source run-commands/update-bashrc.sh

# run installers
source run-commands/run-installers.sh

# cleanup
source run-commands/cleanup.sh

# reboot
echo ""
echo "$(tput setaf 2)Installation completed successfully."
echo "$(tput setaf 2)Rebooting computer in 10 seconds..."
echo ""
sleep 10; sudo reboot
