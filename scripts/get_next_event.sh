#!/usr/bin/env bash

next_event=$(
  /usr/local/bin/icalBuddy -n -ea -eed -ic "$1" -nc -iep 'title,datetime' -po 'datetime,title' -li 1 -ps '/ /' -b '' -df '' eventsToday+1 | sed -E 's/^[^0-9]+//'
)

if [ ! -z "$next_event" ]; then
  echo "${next_event}"
fi
