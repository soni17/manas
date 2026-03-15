updater(){
  installed_version=$1
  latest_version=$2
  installer_path=$3
  app=$4

  dpkg --compare-versions $latest_version "gt" $installed_version
  
  if [ $? -eq 0 ] ; then
    echo "Updating $app from version $installed_version to $latest_version."
    bash $installer_path 1> /dev/null 2>> /tmp/manas.log
    if [ $? = 0 ]; then
      echo "$app has been updated successfully."
    else
      echo "Error: $app update failed. Check error logs at /tmp/manas.log"
    fi
  fi
}
