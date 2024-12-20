source run-commands/runner.sh

run "system/*/"
run "web-browsers/*/"
run "accessories/*/"
run "audio-video/*/"
run "graphics/*/"
run "office/*/"

if [ "$1" = "dev" ]; then
  run "databases/*/"
  run "development/*/"
  run "programming-languages/*/"
fi
