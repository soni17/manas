source scripts/updater.sh

installed_version=$(nala show taskmanagerog | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)
latest_version=$(curl -s https://tmog.org | grep /downloads | grep .deb | cut -d - -f 2 | sed 's/.deb\"//')

updater $installed_version $latest_version "system/tmog/install.sh" "Task Manager OG"
