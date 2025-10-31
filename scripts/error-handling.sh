# stop execution if there's an error
set -e

# standard error message when error occurs
message_on_error() {
  echo -e "\n"
  echo -e "$(tput setaf 1)An error occurred. Please check /tmp/manas.log for more info."

  if [ -f /tmp/manas.log ]; then
    echo "Showing last 10 lines of /tmp/manas.log"
    echo "."
    echo "."
    echo "."
    tail /tmp/manas.log
  fi
}

trap message_on_error EXIT
