# run installers in apps-system
for script in ./apps-system/*.sh; do source $script; done
for script in ./apps-system/*/*.sh; do source $script; done

# run installers in apps-development
for script in ./apps-development/*.sh; do source $script; done
for script in ./apps-development/*/*.sh; do source $script; done

# run installers in apps-other
for script in ./apps-other/*.sh; do source $script; done
for script in ./apps-other/*/*.sh; do source $script; done
