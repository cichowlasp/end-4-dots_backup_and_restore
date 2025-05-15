#!/usr/bin/env bash

export base="$(pwd)/backup"
export user="$(whoami)"
export user_hypr_config="/home/$user/.config/hypr/custom"
export user_ags_user_options="/home/$user/.config/ags/user_options.jsonc"

echo "Starting backup"

sudo cp -r $user_hypr_config $base
sudo chmod -R 777 "$base/custom"
sudo chown -R $(id -u):$(id -g) "$base/custom"
sudo cp $user_ags_user_options $base
sudo chmod -R 777 "$base/user_options.jsonc"
sudo chown -R $(id -u):$(id -g) "$base/user_options.jsonc"

echo "Backup created"
