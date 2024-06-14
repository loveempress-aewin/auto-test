#! /bin/bash
### created	:	Thu May 30 15:16:28 CST 2024
### date	:	Tue Jun  4 16:46:25 CST 2024
### auto	:	loveempress
# global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
. ./auto_parse_version.sh

# version=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 raw 0x1e 0x01 0x00);
# echo "${version}">./result/bbu/version.txt
printf "${catch_bmc_version}\n\n">./result/bbu/version.txt
printf "${parse_name}">>./result/bbu/version.txt
echo -ne '#####                     (33%)\r'
sdr=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr);
#### same bbu sd10
printf  "${sdr}">./result/bbu/sdr.txt
printf "${sdr}">./result/TEST_RECORD/Sensors/sdr.txt;
echo -ne '#############             (66%)\r'
#### TODO : VBAT
vbat=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr|grep -i VBAT);
printf  "${vbat}">./result/bbu/vbat.txt
#### TODO : fan sel / sel elist
fan=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist|grep -i fan);
printf  "${fan}">./result/bbu/fan.txt
bbu_playwright=$(npx playwright test tests/login_sdr.spec.js --headed);
echo -ne '#######################   (100%)\r';
