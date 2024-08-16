echo "checking OS version..."

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
desktop=$DESKTOP_SESSION

# stop script if OS is not Debian MATE 12 or higher
if [ "$distro" != "debian" ] || [ $version -lt 12 ] || [ "$desktop" != "mate" ]; then
  echo "$(tput setaf 1)Error: OS requirement not met"
  echo "Installation stopped."
  echo "You are currently running: $distro $version with $desktop desktop"
  echo "Manas requires: debian 12 or higher with mate desktop"
  exit 1
fi
