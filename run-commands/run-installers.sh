# run installers inside the installers folder
for script in ./installers/*.sh; do source $script; done

# run installers in subfolders
for script in ./installers/*/*.sh; do source $script; done
