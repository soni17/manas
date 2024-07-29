# stop execution if there's an error
set -e

# stop execution if OS is not Debian Mate 12 or later
bash run-commands/check-os.sh

# enable all debian repositories
bash run-commands/enable-repos.sh

# upgrade OS
bash run-commands/upgrade-os.sh

# uninstall bloat
bash run-commands/uninstall-bloat.sh

# install dependencies for installers
bash run-commands/install-dependencies.sh

# update bashrc file
bash run-commands/update-bashrc.sh

# run installers
bash run-commands/run-installers.sh

# cleanup
bash run-commands/cleanup.sh

# reboot
sudo reboot
