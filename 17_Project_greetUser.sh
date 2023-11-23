#!/bin/bash

# Get the current hour
#urrent_hour=$(date +%H)
current_hour=11

# Greet the user based on the time
if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
    echo "Good Morning, $USER!"
elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 16 ]; then
    echo "Good Afternoon, $USER!"
elif [ "$current_hour" -ge 16 ] && [ "$current_hour" -lt 19 ]; then
    echo "Good Evening, $USER!"
else
    echo "Good Night, $USER!"
fi
