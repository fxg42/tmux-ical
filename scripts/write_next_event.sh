#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $CURRENT_DIR
./get_next_event.sh $1 > next_event.out

