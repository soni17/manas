# stop script if OS cannot be determined
if [ ! -f /etc/os-release ]; then
  echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
  echo "Installation stopped."
  exit 1
fi

# grab variables from os-release file
source /etc/os-release
distro=$ID
version=$VERSION_ID
desktop=$XDG_CURRENT_DESKTOP

# stop script if OS is not Debian 12 with mate desktop
if [ "$distro" != "debian" ] || [[ $version -ne 13 ]] || [ "$desktop" != "MATE" ]; then
  echo "$(tput setaf 1)Error: OS requirement not met"
  echo "Installation stopped."
  echo "You are currently running: $distro $version with $desktop desktop"
  echo "Manas requires: debian 12 with mate desktop"
  exit 1
fi
