#!/bin/bash

THEMES_DIRECTORY="$HOME/global-config/themes"

THEME_SELECTED=$(ls "$THEMES_DIRECTORY" | rofi -dmenu)

if [ -z "$THEME_SELECTED" ]; then 
    exit 0 
fi 

THEME_PATH="$THEMES_DIRECTORY/$THEME_SELECTED"

if [ ! -d "$THEME_PATH" ]; then
    echo "Error: Theme directory not found."
    exit 1
fi

ln -sf "$THEME_PATH/cava" "$HOME/global-config/cava/themes/colors"
#ln -sf "$THEME_PATH/btop.theme" "$HOME/global-config/btop/
ln -sf "$THEME_PATH/fastfetch.jsonc" "$HOME/.config/fastfetch/config.jsonc"
ln -sf "$THEME_PATH/hypr.lua" "$HOME/global-config/hypr/modules/colors.lua"
ln -sf "$THEME_PATH/kitty.conf" "$HOME/global-config/kitty/colors.conf" 
ln -sf "$THEME_PATH/rofi.rasi" "$HOME/.config/rofi/config.rasi"
#starship
ln -sf "$THEME_PATH/waybar.css" "$HOME/global-config/waybar/colors/colors.css"

awww img -t center "$THEME_PATH/wallpaper"

pkill waybar
waybar &
