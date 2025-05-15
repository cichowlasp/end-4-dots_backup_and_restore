#!/usr/bin/env bash

export base="$(pwd)/backup"
export user="$(whoami)"
export user_hypr_config="/home/$user/.config/hypr/"
export user_ags_user_options="/home/$user/.config/ags/user_options.jsonc"

sudo cp -r "$base/custom" $user_hypr_config
sudo cp "$base/user_options.jsonc" $user_ags_user_options

echo "Backup restored"
