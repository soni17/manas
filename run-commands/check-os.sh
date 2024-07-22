. /etc/os-release
distro=$ID
desktop=$DESKTOP_SESSION
version=$VERSION_ID

if [ "$distro" != "debian" ] || [ "$desktop" != "mate" ]; then
  echo "$(tput setaf 1)You are not running Debian with Mate desktop environment."
  echo "$(tput setaf 1)Installation stopped."
  exit 1
elif [ $version -lt 12 ]; then
  echo "$(tput setaf 1)Your version of Debian is older than 12"
  echo "$(tput setaf 1)Installation stopped."
  exit 1
fi
