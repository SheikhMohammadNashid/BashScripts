#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "############################################"

# Using awk correctly with '{print $column}'
# We use 'free -m' to ensure the output is specifically in Megabytes
FREERAM=$(free -m | grep Mem | awk '{print $4}')

# Load average usually starts at field 10 in the 'uptime' command
LOAD=$(uptime | awk '{print $(NF-2)}' | sed 's/,//')

# Searching for the root partition '/' instead of a specific hardware name
ROOTFREE=$(df -h / | awk 'NR==2 {print $4}')

echo "############################################"
echo "Available free RAM is ${FREERAM}MB"
echo "############################################"
echo "Current load average (1 min): $LOAD"
echo "###########################################"
echo "Free ROOT partition size is $ROOTFREE"
