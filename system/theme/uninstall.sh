# Not removing everything.
# Switching to default theme and reversing some settings.

dconf write /org/mate/desktop/interface/icon-theme "'menta'"

dconf write /org/mate/desktop/interface/gtk-theme "'Menta'"

dconf write /org/mate/marco/general/theme "'Menta'"

rm -rf ~/.config/menus/*
