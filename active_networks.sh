#!/bin/bash

value=$(ip a | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
  echo "1 Active netwotk interface found"
elif [ $value -gt 1 ]
then
  echo "Multiple network interfaces found"
else
  echo"No active interfaces found"

echo "Completed"
fi

echo "Completed"

date
