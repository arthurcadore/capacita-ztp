# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras

# Use networkboot DHCP image as base:
FROM networkboot/dhcpd:1.3.0

# create /var/lib/dhcp/leases file:
RUN touch /var/lib/dhcp/dhcpd.leases

# keep the container running:
CMD ["dhcpd", "-d", "--no-pid"]



