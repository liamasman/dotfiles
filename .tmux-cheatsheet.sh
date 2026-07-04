#!/bin/bash

# A simple tmux cheat sheet script

echo "----------------------------------------------------------------------"
echo "                       ✨ TMUX CHEAT SHEET ✨                       "
echo "----------------------------------------------------------------------"

# Set the prefix key variable for easy reading
PREFIX_KEY="Ctrl + a"
echo -e "\n🔥 **Prefix Key: ${PREFIX_KEY}** (Press this before any other key combination)"
echo "----------------------------------------------------------------------"

## SESSION MANAGEMENT
echo -e "\n## 💻 Session Management"
echo "  \$ tmux new -s <name>     # Create a new named session"
echo "  \$ tmux attach -t <name>  # Attach to an existing session"
echo "  \$ tmux ls                # List all sessions"
echo "  \$ tmux kill-session -t <name> # Kill a specific session"
echo "  ${PREFIX_KEY} + d          # Detach from the current session (leaves it running)"

---

## WINDOWS (TABS)
echo -e "\n## 🪟 Windows (Tabs)"
echo "  ${PREFIX_KEY} + c          # Create a new window"
echo "  ${PREFIX_KEY} + p          # Move to the previous window"
echo "  ${PREFIX_KEY} + n          # Move to the next window"
echo "  ${PREFIX_KEY} + <number>   # Move to a specific window by its index (e.g., 0, 1)"
echo "  ${PREFIX_KEY} + ,          # Rename the current window"
echo "  ${PREFIX_KEY} + &          # Kill the current window"

---

## PANES (SPLITS)
echo -e "\n## 🧱 Panes (Splits within a window)"
echo "  ${PREFIX_KEY} + %          # Split current pane vertically"
echo "  ${PREFIX_KEY} + \"          # Split current pane horizontally"
echo "  ${PREFIX_KEY} + <arrow key># Move to the pane in that direction"
echo "  ${PREFIX_KEY} + z          # Toggle zoom in/out on the current pane"
echo "  ${PREFIX_KEY} + x          # Kill the current pane"
echo "  ${PREFIX_KEY} + <space>    # Cycle through pre-defined pane layouts"
echo "  ${PREFIX_KEY} + !          # Break pane out into a new window"

---

## MISCELLANEOUS
echo -e "\n## ⚙️ Miscellaneous"
echo "  ${PREFIX_KEY} + ?          # Show all keybindings (built-in cheat sheet)"
echo "  ${PREFIX_KEY} + [          # Enter copy mode (to scroll and copy text)"
echo "  ${PREFIX_KEY} + ]          # Paste buffer content (after copying in copy mode)"
echo "  ${PREFIX_KEY} + r          # Force redraw of the current client"
echo "----------------------------------------------------------------------"
echo "Note: The prefix key can be customized in your ~/.tmux.conf file."
