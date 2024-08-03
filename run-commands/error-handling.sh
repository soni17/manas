# stop execution if there's an error
set -e

# standard error message when error occurs
  message_on_error() {
    echo -e "$(tput setaf 1)An error occurred. Please check /tmp/manas-errors.log for more info."
  }

  trap message_on_error EXIT
  