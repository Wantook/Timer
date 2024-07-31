#!/bin/bash

# Launch the countdown script in a new xterm window
xterm -e "./watch.sh; bash" &

# Wait for a moment to ensure the terminal window is open
sleep 1

# Get the window ID of the newly opened xterm window
window_id=$(wmctrl -l | grep -m1 "watch.sh" | awk '{print $1}')

# Keep the xterm window on top
wmctrl -i -r $window_id -b add,above
