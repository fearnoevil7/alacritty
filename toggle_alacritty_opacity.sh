#!/bin/bash

# Path to your Alacritty configuration file
CONFIG_FILE="$HOME/.config/alacritty/alacritty.toml"

# Check if the configuration file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Alacritty configuration file not found!"
    exit 1
fi

# Toggle opacity between 0.85 and 1
CURRENT_OPACITY=$(awk '/^opacity/ {print $3}' "$CONFIG_FILE")
if [ "$CURRENT_OPACITY" = "0.85" ]; then
    sed -i '' 's/opacity = 0.85/opacity = 1/' "$CONFIG_FILE"
    echo "Opacity set to 1"
else
    sed -i '' 's/opacity = 1/opacity = 0.85/' "$CONFIG_FILE"
    echo "Opacity set to 0.85"
fi

# Restart Alacritty to apply the changes (you may need to adjust this based on your setup)
#alacritty &

