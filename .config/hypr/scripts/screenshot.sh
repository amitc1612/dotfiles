#!/bin/bash

# Take screenshot (hyprshot saves to ~/*hyprshot.png by default)
hyprshot -m region --silent

# Find the screenshot file
FILENAME=$(ls -t ~/*hyprshot.png 2>/dev/null | head -n1)

# Check if screenshot was created
if [ -f "$FILENAME" ]; then
    # Copy to clipboard
    wl-copy < "$FILENAME"
    
    # Move to Screenshots folder
    mv "$FILENAME" ~/Pictures/Screenshots/
    
    # Optional: Notification
    notify-send "Screenshot taken" "Saved to ~/Pictures/Screenshots/ and copied to clipboard"
else
    notify-send "Screenshot failed" "No screenshot was captured"
    exit 1
fi