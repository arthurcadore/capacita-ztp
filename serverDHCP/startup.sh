#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Script to initialize the DHCP server. 

# create the dhcpd.leases file if it does not exist
touch /var/lib/dhcp/dhcpd.leases

# change user of /var/lib/dhcp/dhcpd.leases to root
sudo chown root:root /var/lib/dhcp/dhcpd.leases

# give permissions to the file read and write: 
sudo chmod 666 /var/lib/dhcp/dhcpd.leases

# start the DHCP server
dhcpd -d --no-pid