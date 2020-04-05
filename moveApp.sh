#!/bin/bash
window=( nemo telegram )

for i in "${!window[@]}"
do
  until [ -n "$(wmctrl -l | grep "${window[$i]}" 2>&1)" ]
  do
    sleep 1
  done

  wmctrl -r "${window[$i]}" -t $i

done

exit
