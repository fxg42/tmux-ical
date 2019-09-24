# tmux-ical

Adds next iCal event to tmux status line

![screenshot](https://github.com/fxg42/tmux-ical/blob/master/screenshot.png)

## Features

- `#{next_event}` placeholder for the status line. Displays a short summary of
  the next event for today.

## Dependencies

- [icalBuddy](https://hasseg.org/icalBuddy/)

## Installation

Clone the repo:

    $ git clone https://github.com/fxg42/tmux-ical ~/clone/path

Modify the given [plist sample file](https://github.com/fxg42/tmux-ical/blob/master/samples/com.github.fxg42.tmux-ical.plist)
and copy it to `~/Library/LaunchAgents/com.github.fxg42.tmux-ical.plist` by
modifying the given sample file with the preferred calendar name and absolute
path to the executable.

Load the plist:

    $ launchctl load ~/Library/LaunchAgents/com.github.fxg42.tmux-ical.plist

Add this line to .tmux.conf:

    run-shell ~/clone/path/ical.tmux

## License

[MIT](https://github.com/fxg42/tmux-ical/blob/master/LICENSE)
