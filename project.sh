SELECTED_DIR=$(zoxide query --list | vicinae dmenu --placeholder "Select option")
SESSION_NAME=$(basename "$SELECTED_DIR")
if [ -n "$SELECTED_DIR" ]; then
    zed -n "$SELECTED_DIR" &
    ghostty -e tmux new-session -A -s "$SESSION_NAME" -c "$SELECTED_DIR" &
fi
