source scripts/updater.sh

installed_version=$(pi --version)
latest_version=$(curl -s "https://api.github.com/repos/earendil-works/pi/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

dpkg --compare-versions $latest_version "gt" $installed_version

if [ $? -eq 0 ]; then
  echo "Updating pi from version $installed_version to $latest_version."
  pi update --all 1> /dev/null 2>> /tmp/manas.log
  if [ $? = 0 ]; then
    echo "pi has been updated successfully."
  else
    echo "Error: pi update failed. Check error logs at /tmp/manas.log"
  fi
fi
