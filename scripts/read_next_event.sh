#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILE="$CURRENT_DIR/next_event.out"
if [ -f "$FILE" ]; then
  next_event=$(head -n 1 "$FILE")

  if [ ! -z "$next_event" ]; then
    if [ ${#next_event} -ge 27 ]; then
      short_next_event=$( echo "${next_event}" | cut -c 1-25 )
      echo "  ${short_next_event}…  "
    else
      echo "  ${next_event}  "
    fi
  fi
fi

