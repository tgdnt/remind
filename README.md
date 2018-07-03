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

### Customized do:

Also included is a do file, which has to be moved out into your
add-ons directory and, if you use other modified do actions, must be
edited into your existing modified do file.

This modified do action will read your todo for a reminder key/value
pair and, if present, automatically delete the corresponding iCloud reminder.

### Notes:

The script takes a date and time in `%Y-%m-%d %H:%M` and automatically
converts it to what works with osascript to interact with Reminders.

The script also adds a key value pair with the reminder ID, which can later
be used by the Customized do action to delete the corresponding reminder upon
completing a todo in todo.sh.

Obviously only works on macOS.
