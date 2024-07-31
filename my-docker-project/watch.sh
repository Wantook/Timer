#!/bin/bash

countdown() {
    start=$(( $(date '+%s') + $1 ))
    while [ $start -ge $(date '+%s') ]; do
        time=$(( $start - $(date '+%s') ))
        printf '%02d:%02d:%02d\r' $((time/3600)) $(( (time%3600)/60 )) $((time%60))
        sleep 0.1
    done
    echo -e "\nAight you done...."
}


echo "Important Conversions:"
echo "----------------------"
echo "1 min = 60 secs"
echo "5 min = 300 secs"
echo "15 min = 900 secs"
echo "30 min = 1800 secs"
echo "45 min = 2700 secs"
echo "60 min = 3600 secs"
echo "Press 1 for Countdown Timer"

read -n 1 input

case $input in
    1)
        echo -e "\nEnter IN SECONDS (ctrl + c to stop)"
        read seconds
        countdown $seconds
        ;;
    
    *)
        echo -e "\nInvalid input. Please press 1 or 2."
        ;;
esac
