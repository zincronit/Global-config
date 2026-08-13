#!/bin/bash

CONFIG_PATH="$HOME/global-config"
THEMES_PATH="$CONFIG_PATH/themes"
WAYBAR_LINK="$CONFIG_PATH/waybar/style.css"


CURRENT_THEME=$(basename "$(dirname "$(readlink "$WAYBAR_LINK")")")

WALLPAPER=$( ls "$THEMES_PATH/$CURRENT_THEME/wallpapers" | rofi -dmenu)

if [ -z "$WALLPAPER" ]; then 
    exit 0
fi

WALLPAPER_PATH="$THEMES_PATH/$CURRENT_THEME/wallpapers/$WALLPAPER"

ln -sf "$WALLPAPER_PATH" "$THEMES_PATH/$CURRENT_THEME/wallpaper"  

awww img -t center "$THEMES_PATH/$CURRENT_THEME/wallpaper"
