# run installers in apps-system
for script in ./apps-system/*/install.sh; do source $script; done

# run installers in apps-development
for script in ./apps-development/*/install.sh; do source $script; done

# run installers in apps-other
for script in ./apps-other/*/install.sh; do source $script; done
