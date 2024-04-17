#! /bin/bash
for ip in 192.168.120.{1..254};
do
    #sudo arp -d $ip > /dev/null 2>&1;
    #ping -c 1 $ip > /dev/null 2>&1;
    ping -c 1 $ip | tee -a pingpingping.txt ;
done
##wait
#arp -n|grep -v incomplete
