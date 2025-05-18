# minimize output to show only the name of app and status of installation
# error outputs are sent to /tmp/manas.log
run () {
  for dir in $1
  do
    app=${dir%*/}
    app="${app##*/}"
    echo -ne "$app...installing \r"

    source "$dir/install.sh" 1> /dev/null 2>> /tmp/manas.log 

    if [ "$?" -eq "0" ]; then
      echo -e "$app...$(tput setaf 2)installed \xE2\x9C\x94 $(tput setaf 7)"
    fi
  done
}

run "system/*/"
run "web-browsers/*/"
run "accessories/*/"
run "audio-video/*/"
run "graphics/*/"
run "office/*/"
run "development/*/"
run "programming-languages/*/"
