# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use networkboot DHCP image as base:
FROM networkboot/dhcpd:1.3.0

# Copy the configuration file to the container:
COPY serverDHCP/startup.sh /usr/local/bin/startup.sh

# Set the file as executable:
RUN chmod +x /usr/local/bin/startup.sh

# Start the DHCP server and keep it running:
CMD ["/usr/local/bin/startup.sh"]


