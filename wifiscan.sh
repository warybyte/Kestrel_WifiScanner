#!/bin/bash
# Automated wifi scanner by warybyte configured
# to run at boot on a Raspi Zero
# Last edit 07/18/17
#
# ------------------------------------------------
# Define variables...
today=$(date +%F)
logtitle="wireless-scan-"$today

# Run commands...
while true;
do
        date >> $logtitle;
        echo >> $logtitle;
        iwlist wlan0 scan >> $logtitle;
        echo >> $logtitle;
        sleep 10;
done;
# ---------------------------------------------------
# Set the following in /etc/rc.local to kick on boot
# /bin/bash /wifiscan.sh & # added July 18, 2017
-----------------------------------------------------
