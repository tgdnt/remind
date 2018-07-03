#!/bin/bash

action=$1
shift

[ "$action" = "usage" ] && {
  echo	" Customized do:"
  echo	"	to work in conjuntion with the remind add-on, if the todo
  echo  "	has a reminder: key/value pair, this will look for the"
  echo  "	corresponding iCloud reminder and delete it."
  echo  ""
  exit
}

getTodo "$@"

if [[ -n $(echo $todo | grep -i "reminder:") ]]; then
reminderID=x-apple-reminder://$(echo $todo | grep -i "reminder:" | sed "s_\(.* reminder:\)\([A-Z0-9]\{8\}-[A-Z0-9]\{4\}-[A-Z0-9]\{4\}-[A-Z0-9]\{4\}-[A-Z0-9]\{12\}\)\(.*\)_\2_")
osascript -e "tell application \"Reminders\" to delete reminder id \"$reminderID\""
fi

"$TODO_SH" do "$@"
