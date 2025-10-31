updater(){
  installed_version=$1
  latest_version=$2
  installer_path=$3
  app=$4

  installed_version_major=$(echo $installed_version | cut -d "." -f 1)
  installed_version_minor=$(echo $installed_version | cut -d "." -f 2)
  installed_version_patch=$(echo $installed_version | cut -d "." -f 3)

  latest_version_major=$(echo $latest_version | cut -d "." -f 1)
  latest_version_minor=$(echo $latest_version | cut -d "." -f 2)
  latest_version_patch=$(echo $latest_version | cut -d "." -f 3)

  update_available(){
    if [ $latest_version_major -gt $installed_version_major ] || 
      [ $latest_version_minor -gt $installed_version_minor ] || 
      [ $latest_version_patch -gt $installed_version_patch ]; then
      echo "true"
    else
      echo "false"
    fi
  }

  if [ $(update_available) == "true" ] ; then
    echo "Updating $app from version $installed_version to $latest_version."
    bash $installer_path 1> /dev/null 2>> /tmp/manas.log
  else
    exit
  fi

  if [ $? = 0 ]; then
    echo "$app has been updated successfully."
  else
    echo "Error: $app update failed. Check error logs at /tmp/manas.log"
  fi
}
