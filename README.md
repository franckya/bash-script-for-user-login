### bash-script-for-user-login

This script first uses the last command to get a list of users who have logged in to the server, and then pipes the output to awk to extract just the username field. The list of usernames is then sorted and passed through uniq to remove any duplicate entries. The resulting list of unique users is then saved to a file called users.txt.

The script then uses a while loop to read the users.txt file line by line, and for each user, it runs the history command and pipes the output to grep to filter for only the commands entered by that user. Finally, the script prints the username and the filtered command history for the user.

Note that this script will only show the command history for the current login session for each user. If you want to see the command history for all login sessions, you can use the bash builtin history command with the -a flag to append the history file to the current session's history list.
