#! /bin/bash
### created	:	Thu May 30 15:16:28 CST 2024
### date	:	.
### auto	:	loveempress
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);

version=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 raw 0x1e 0x01 0x00);
echo "${version}">>./result/bbu/version.txt
echo -ne '#####                     (33%)\r'
sdr=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr);
echo -e "${sdr}">>./result/bbu/sdr.txt
echo -ne '#############             (66%)\r'
#### TODO : VBAT
vbat=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr|grep -i VBAT);
echo -e "${vbat}">>./result/bbu/vbat.txt
#### TODO : fan sel / sel elist
fan=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist|grep -i fan);
echo -e "${fan}">>./result/bbu/fan.txt
echo -ne '#######################   (100%)\r';
