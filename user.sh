#!/bin/bash

# Get a list of users who have logged in to the server
last | awk '{print $1}' | sort | uniq > users.txt

# Loop through the list of users
while read user; do
  # Print the username and the command history for the user
  echo "Command history for user $user:"
  history | grep $user
  echo ""
done < users.txt
