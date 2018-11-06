# checkbond
Checks Bond NIC Speed/Status


This script should be used locally within the server you want to get information on. 

Change permissions to allow execution on this file
chmod +x checkbond.sh

To run this script manually invoke it by issuing ./checkbond.sh
 ./checkbond.sh
 
 
 Output
 hostname:<bond>|<Slave>-<Speed>;<Slave>-<Speed>
 
 
nj3core06prf.perf.otc:bond0|eth0-10000 Mbps;eth2-10000 Mbps
nj3core06prf.perf.otc:bond1|eth1-10000 Mbps;eth3-10000 Mbps
nj3core06prf.perf.otc:bond2|eth8-1000 Mbps ;eth9-1000 Mbps

