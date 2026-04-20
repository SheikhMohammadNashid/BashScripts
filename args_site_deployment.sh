#!/bin/bash

# ============================================================

# Script Name  : apache_website_deploy.sh

# Description  : Installs Apache2 and deploys a website

#                downloaded from tooplate.com

# Author       : DevOps

# ============================================================

# ------------------------------------------------------------

# STEP 1: Update package list and install Apache2 and unzip

# ------------------------------------------------------------

echo "Updating package list..."

sudo apt update -y

echo "Installing Apache2 and unzip..."

sudo apt install apache2 unzip -y

# ------------------------------------------------------------

# STEP 2: Start Apache2 service and enable it on system boot

# ------------------------------------------------------------

echo "Starting Apache2 service..."

sudo systemctl start apache2

echo "Enabling Apache2 to start on boot..."

sudo systemctl enable apache2

# ------------------------------------------------------------

# STEP 3: Create working directory for website files

# ------------------------------------------------------------

echo "Creating website directory at /home/devops/website..."

mkdir -p /home/devops/website

# Navigate into the created directory

cd /home/devops/website/

# ------------------------------------------------------------

# STEP 4: Download the website template zip from tooplate.com

# ------------------------------------------------------------

#echo "Downloading website template..."

#wget https://www.tooplate.com/zip-templates/2159_mochi_space.zip

# ------------------------------------------------------------

# STEP 5: Extract the downloaded zip file

# ------------------------------------------------------------

#echo "Extracting website template..."

#unzip 2159_mochi_space.zip

# ------------------------------------------------------------

# STEP 6: Copy all extracted website files to Apache2 web root

#         /var/www/html/ is the default Apache2 document root

#         -r flag ensures all subfolders (css, js, images) are copied

# ------------------------------------------------------------

#echo "Copying website files to Apache2 web root..."

#sudo cp -r 2159_mochi_space/* /var/www/html/

# ------------------------------------------------------------

# STEP 7: Confirm deployment is complete

# ------------------------------------------------------------

echo "============================================================"

echo " Deployment Complete!"

echo " Open your browser and visit: http://$(hostname -I | awk '{print $1}')"

echo "============================================================"

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html/
