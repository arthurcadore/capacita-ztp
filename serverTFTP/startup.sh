#!/bin/bash
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore

# Script to initialize the TFTP server.

# Start the TFTP server and keep it running sharing the directory tftpshare.
# The TFTP is listening on port 69 of any interface

in.tftpd -l -s /tftpshare -a 0.0.0.0:69
