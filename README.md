# remind

This is an add-on for [todo.sh](https://github.com/todotxt/todo.txt-cli/)
that grabs a todo and creates an iCloud reminder out of it,
with an alert date and time.

Usage:

```
todo.sh remind ITEM# DATE TIME
```

Example:

```
todo.sh remind 7 2018-06-24 22:42
# Creates a reminder titled the same as todo number 7, and 
# sets its alert time for June 24th 2018 at 10:42 PM.
```

Notes:

The script takes a date and time in `%Y-%m-%d %H:%M` and automatically
converts it to what works with osascript to interact with Reminders.

Obviously only works on macOS.
