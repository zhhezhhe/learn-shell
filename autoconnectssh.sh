#!/bin/bash
# set in your localhost in LAN
# generate key in ~/.ssh/
# ssh-keygen
# copy the key to your remote host in WAN
# ssh-copy-id bmyan@162.105.243.101
autossh -M 5678 -NR 10001:localhost:22 bmyan@162.105.243.101
# binding port 10000 of host in WAN with port 22 of localhost in LAN
# In your host(WAN), using ss -ant, you will find local:10000 is listened. 
# That's ok

# In your remote host in WAN, use following command to login
# ssh uername_of_LAN@localhost -p10001
