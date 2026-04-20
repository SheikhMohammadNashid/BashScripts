#!/bin/bash

read -p "Enter the number: " NUM

if [ $NUM -gt 100 ]
then
  echo "Entered number $NUM is greater than 100"
  sleep 3
  echo "Completed"
  date
else
  echo "Entered number $NUM is 100 or less."
  echo "Try again with a larger number next time!"
fi
