#!/bin/bash

#set a base directory relative to script's location
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#ask for the student's name to build the environment path
read -p "Enter your name (used in the folder name): " your_name
env_dir="$script_dir/submission_reminder_${your_name}"

#config file path
config_file="$env_dir/config/config.env"

#check if the config file exists
if [ ! -f "$config_file" ]; then
	echo "Config file not found at $config_file"
	exit 1
fi

#prompt the user for new assignment name
read -p "Enter the new assignment name: " new_assignment

#using sed to replace row 2 of config.env with the new assignment
sed -i "2s/^.*$/ASSIGNMENT=\"$new_assignment\"/" "$config_file"

echo "The assignment has been successfully updated!"

#run startup.sh to see the new assignment check
startup_script="$env_dir/startup.sh"

if [ -x "$startup_script" ]; then
	echo "Running updated reminder app..."
	(
		cd "$env_dir" && ./startup.sh
	)
else
	echo "Could not run $startup_script - please check if it exists and is executable"
	exit 1
fi
