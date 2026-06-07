SELECTED_DIR=$(zoxide query --list | vicinae dmenu --placeholder "Select option")

if [ -n "$SELECTED_DIR" ]; then
    zed "$SELECTED_DIR" &
    ghostty -e fish -c "cd \"$SELECTED_DIR\"; exec fish" &
fi
