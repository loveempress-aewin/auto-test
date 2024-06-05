#!/bin/bash
### created	:	Tue Jun  4 16:02:12 CST 2024
### date	:	.
### auto	: lovecoding-queen
###
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
sel_v=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel -v info);
date>./result/sel_info.txt;
printf '%s' "${sel_v}">>./result/sel_info.txt;

sel_elist_0=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist);
printf "${sel_elist_0}">./result/sel_elist_0.txt
printf "================clear================\n"
sel_clear_0=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel clear);
printf "${sel_clear_0}\n";
printf "${sel_clear_0}">./result/sel_clear_0.txt;
printf "================clear================\n"
# sleep 20;
./auto_function_process.sh 20
