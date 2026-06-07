SELECTED_DIR=$(zoxide query --list | vicinae dmenu --placeholder "Select option")

zed "$SELECTED_DIR"

ghostty -e fish -c "cd \"$SELECTED_DIR\"; exec fish"
