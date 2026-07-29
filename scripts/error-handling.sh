# stop execution if there's an error
# set -e

# standard error message when error occurs
message_on_error() {
  echo -e "\n"
  echo -e "$(tput setaf 1)An error occurred. Please check ~/.local/share/manas/error.log for more info."

  if [ -f ~/.local/share/manas/error.log ]; then
    echo "Showing last 10 lines of ~/.local/share/manas/error.log"
    echo "."
    echo "."
    echo "."
    tail ~/.local/share/manas/error.log
  fi
}

trap message_on_error EXIT
