# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use the official alpine image as a base:
FROM alpine:3.19.1

# Download and install TFTP server:
RUN apk add --no-cache tftp-hpa

# Create a directory to store the files:
RUN mkdir -p /tftpshare

# Set the directory as the working directory:
WORKDIR /tftpshare

# Start the TFTP server and keep it running sharing the directory tftpshare. 
# The TFTP is listening on port 69 of any interface
CMD ["in.tftpd", "-l", "-s", "/tftpshare", "-a", "0.0.0.0:69"]