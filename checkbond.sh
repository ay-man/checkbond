#!/bin/bash
#Script to Check bonding Speeds
#Author: Ayman Ghanim
#Date: 09-21-2018


bond0="/proc/net/bonding/bond0"
bond1="/proc/net/bonding/bond1"
bond2="/proc/net/bonding/bond2"


if [ -f "/etc/sysconfig/network-scripts/ifcfg-bond0" ]
then

        s1="$(cat /proc/net/bonding/bond0|grep -i "slave interface"|awk 'FNR==1 {print $3}')"
        s1speed=$(cat /proc/net/bonding/bond0|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==3 {print $2,$3}')
        s1status=$(cat /proc/net/bonding/bond0|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==2 {print $3}')

        s2="$(cat /proc/net/bonding/bond0|grep -i "slave interface"|awk 'FNR==2 {print $3}')"
        s2speed=$(cat /proc/net/bonding/bond0|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==3 {print $2,$3}')
        s2status=$(cat /proc/net/bonding/bond0|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==2 {print $3}')

        echo $(hostname)':''bond0''|'${s1}'-'${s1speed}';'${s2}'-'${s2speed}



else
        echo "Bond0 configuration not found."
fi


if [ -f "/etc/sysconfig/network-scripts/ifcfg-bond1" ]
then
        s1="$(cat /proc/net/bonding/bond1|grep -i "slave interface"|awk 'FNR==1 {print $3}')"
        s1speed=$(cat /proc/net/bonding/bond1|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==3 {print $2,$3}')
        s1status=$(cat /proc/net/bonding/bond1|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==2 {print $3}')

        s2="$(cat /proc/net/bonding/bond1|grep -i "slave interface"|awk 'FNR==2 {print $3}')"
        s2speed=$(cat /proc/net/bonding/bond1|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==3 {print $2,$3}')
        s2status=$(cat /proc/net/bonding/bond1|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==2 {print $3}')

        echo $(hostname)':''bond1''|'${s1}'-'${s1speed}';'${s2}'-'${s2speed}

else
        echo "Bond1 configuration not found."
fi


if [ -f "/etc/sysconfig/network-scripts/ifcfg-bond2" ]
then
        s1="$(cat /proc/net/bonding/bond2|grep -i "slave interface"|awk 'FNR==1 {print $3}')"
        s1speed=$(cat /proc/net/bonding/bond2|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==3 {print $2,$3}')
        s1status=$(cat /proc/net/bonding/bond2|grep -i "Slave Interface: ${s1}" -A 3|awk 'FNR==2 {print $3}')

        s2="$(cat /proc/net/bonding/bond2|grep -i "slave interface"|awk 'FNR==2 {print $3}')"
        s2speed=$(cat /proc/net/bonding/bond2|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==3 {print $2,$3}')
        s2status=$(cat /proc/net/bonding/bond2|grep -i "Slave Interface: ${s2}" -A 3|awk 'FNR==2 {print $3}')

        echo $(hostname)':''bond2''|'${s1}'-'${s1speed}';'${s2}'-'${s2speed}
else
        echo "Bond2 configuration not found."
fi
