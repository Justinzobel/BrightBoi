#!/bin/sh

IFS=: # To allow easy handling of $PATH


deps="zenity:xrandr"
for e in $deps
do test -z `find $PATH -name "$e"`&& echo "$e is not installed."
done

echo "All done! All dependencies located."


unset IFS
