#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Script to initialize the DHCP server.

# start the DHCP server
dhcpd -d --no-pid

# verify the status of the DHCP server:
ps aux

# Keep the container running
tail -f /dev/null
