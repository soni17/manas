. /etc/os-release
distro=$ID
desktop=$DESKTOP_SESSION

if [ "$distro" != "debian" ] || [ "$desktop" != "mate" ]; then
  echo "$(tput setaf 1)You are not running Debian with Mate desktop environment."
  echo "$(tput setaf 1)Installation stopped."
  exit 1
fi
