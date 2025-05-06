#!/usr/bin/env zsh

# Display a random tip of the day for zsh users

# Array of useful zsh tips
tips=(
    "Use 'cd -' to go back to the previous directory you were in."
    "Press Ctrl+R to search through your command history."
    "Use 'tab' twice for ambiguous completions to see all possibilities."
    "The 'fc' command opens your last command in an editor."
    "Use 'Alt+.' to insert the last argument of the previous command."
    "Type 'sudo !!' to repeat the last command with sudo."
    "Use '!!:s/foo/bar/' to repeat the last command but replace foo with bar."
    "Press Ctrl+L to clear the screen, same as the 'clear' command."
    "Use 'kill -9 PID' to forcefully terminate a process."
    "The 'ps aux | grep process_name' command helps find processes."
    "Use 'df -h' to check disk space in human-readable format."
    "The 'du -sh *' command shows the size of files and directories."
    "Use 'history | grep command' to find previous uses of a command."
    "The 'kill %1' command kills job number 1 that's running in the background."
    "Use '&' at the end of a command to run it in the background."
    "The '>' operator redirects output to a file, overwriting it."
    "Use '>>' to append output to a file instead of overwriting."
    "The '2>&1' redirects stderr to the same place as stdout."
    "Use 'zsh_stats' to see your most used commands"
    "Press Ctrl+A to move cursor to the beginning of the line."
    "Press Ctrl+E to move cursor to the end of the line."
    "Use Ctrl+U to clear the line before the cursor position."
    "Press Ctrl+K to clear the line after the cursor position."
    "Use Ctrl+W to delete the word before the cursor."
    "The 'date' command prints the current date and time."
    "Use 'time command' to measure how long a command takes to execute."
    "The 'which command' shows the full path of the command."
    "Use ', <Part Of Directory Name>' to cd without typing the full name of the directory"
)

# Get a random tip
random_tip=${tips[$RANDOM % ${#tips[@]} + 1]}

# Display the tip with some formatting
echo "\033[1;34m┌─────────────────────────────────────────────────\033[0m"
echo "\033[1;34m│\033[0m \033[1;33mTIP OF THE DAY:\033[0m"
echo "\033[1;34m│\033[0m \033[0;32m$random_tip\033[0m"
echo "\033[1;34m└─────────────────────────────────────────────────\033[0m"
