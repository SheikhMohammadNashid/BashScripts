#!/bin/bash

# Define variables for easier maintenance
SERVICE="apache2"

echo "##############################################"
date

# Check if Apache2 is running
# Using systemctl is more reliable than checking for a pid file
systemctl is-active --quiet $SERVICE

if [ $? -eq 0 ]
then
    echo "$SERVICE process is running"
else
    echo "$SERVICE process is not running"
    echo "Attempting to start $SERVICE..."
    
    sudo systemctl start $SERVICE

    # Re-check if the start command succeeded
    if [ $? -eq 0 ]
    then
        echo "Process started successfully"
    else
        echo "Process failed to start, contact the admin"
    fi
fi

echo "##############################################"
