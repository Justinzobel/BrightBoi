#!/bin/bash
# Adjust brightness on monitors using xrandr and zenity
# Solus deps: sudo eopkg install zenity xrandr

# Select output
selected_monitor=$(zenity --height=250 \
                          --list \
                          --radiolist \
                          --text 'Select the output to be adjusted:' \
                          --column 'Select...' \
                          --column 'Output Name' \
                          $(for i in $(xrandr | grep " connected" | cut -f1 -d " ");do echo \$FALSE ${i};done))

# Select brightness
selected_brightness=$(zenity --height 380 \
                             --list \
                             --radiolist \
                             --text 'Select brightness level' \
                             --column 'Select...' \
                             --column 'Brightness' \
                             $FALSE 10 '10%' \
                             $FALSE 20 '20%' \
                             $FALSE 30 '30%' \
                             $FALSE 40 '40%' \
                             $FALSE 50 '50%' \
                             $FALSE 60 '60%' \
                             $FALSE 70 '70%' \
                             $FALSE 80 '80%' \
                             $FALSE 90 '90%' \
                             $FALSE 100 '100%')

# Adjust brightness
case ${selected_brightness} in

  "10%")
    xrandr --output ${selected_monitor} --brightness 0.1
    ;;

  "20%")
    xrandr --output ${selected_monitor} --brightness 0.2
    ;;

  "30%")
    xrandr --output ${selected_monitor} --brightness 0.3
    ;;

  "40%")
    xrandr --output ${selected_monitor} --brightness 0.4
    ;;

  "50%")
    xrandr --output ${selected_monitor} --brightness 0.5
    ;;

  "60%")
    xrandr --output ${selected_monitor} --brightness 0.6
    ;;

  "70%")
    xrandr --output ${selected_monitor} --brightness 0.7
    ;;

  "80%")
    xrandr --output ${selected_monitor} --brightness 0.8
    ;;

  "90%")
    xrandr --output ${selected_monitor} --brightness 0.9
    ;;

  "100%")
    xrandr --output ${selected_monitor} --brightness 1.0
    ;;
esac
