#!/bin/bash

# Check if mode was provided
if [ -z "$1" ]; then
    notify-send "Screenshot failed" "Usage: screenshot.sh [region|window|output]"
    exit 1
fi

MODE="$1"

# Validate mode is one of the accepted options
if [[ ! "$MODE" =~ ^(region|window|output)$ ]]; then
    notify-send "Screenshot failed" "Invalid mode: $MODE. Use region, window, or output"
    exit 1
fi

# Take screenshot with the specified mode
hyprshot -m "$MODE" --silent

# Wait half a second for the image to save properly
sleep 0.5

# Find the screenshot file
FILENAME=$(ls -t ~/*hyprshot.png 2>/dev/null | head -n1)

# Check if screenshot was created
if [ -f "$FILENAME" ]; then
    # Copy to clipboard
    wl-copy < "$FILENAME"
    
    # Move to Screenshots folder
    mv "$FILENAME" ~/Pictures/Screenshots/
    
    # Optional: Notification
    notify-send "Screenshot taken" "Mode: $MODE\nSaved to ~/Pictures/Screenshots/ and copied to clipboard"
else
    notify-send "Screenshot failed" "No screenshot was captured"
    exit 1
fi