#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top &

for arg in "clipit" "nm-applet" "blueberry-tray"
do
    if ! ps ax | grep -v grep | grep -io "$arg"
    then
        echo "Launching $arg"
        exec $arg &
    fi
done

echo 'Polybar launched'
exit 0
