#!/usr/bin/env bash

number_of_windows=$(yabai -m query --windows --space | /opt/homebrew/bin/jq 'length')
number_of_stacked=$(yabai -m query --windows --space | /opt/homebrew/bin/jq -c 'map(select(."stack-index" != 0)) | length')

padding=15
lpadding=40

# [[ "$number_of_windows" -eq 1 ]] && padding=15
[[ "$number_of_stacked" = 0 ]] && lpadding=$padding

yabai -m config --space mouse top_padding $padding
yabai -m config --space mouse bottom_padding $padding
yabai -m config --space mouse left_padding $lpadding
yabai -m config --space mouse right_padding $padding
yabai -m config --space mouse window_gap $padding
