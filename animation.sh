#!/bin/bash

positions=(
    "+0+0"     # Top-left
    "+640+0"   # Top-center
    "+1280+0"  # Top-right
    "+0+540"   # Bottom-left
    "+640+540" # Bottom-center
    "+1280+540" # Bottom-right
)

bg_colors=(
    "#FF0000"  # Red
    "#00FF00"  # Green
    "#0000FF"  # Blue
    "#FFFF00"  # Yellow
    "#FF00FF"  # Magenta
    "#00FFFF"  # Cyan
)

text_colors=(
    "#FFFFFF"  # White
    "#000000"  # Black
    "#FFFFFF"  # White
    "#000000"  # Black
    "#FFFFFF"  # White
    "#000000"  # Black
)

num_terminals=${#positions[@]}

for ((i = 0; i < num_terminals; i++)); do
    gnome-terminal --geometry=80x24${positions[i]} -- bash -c "echo -e \"\033]11;${bg_colors[i]}\007\033]10;${text_colors[i]}\007\"; while true; do sl -F && sl -a; done; exec bash"
    done
