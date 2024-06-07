#!/bin/bash
### created	:	Thu Jun  6 10:37:50 CST 2024
### date	:	Fri Jun  7 11:35:48 CST 2024
### auto	:	lovecoding-queen
###
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
function_watchdog_get(){
    if [[ ! -f ./result/watchdog.txt ]];then
        date>>./result/watchdog.txt;
        # sel_elist=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist);
    else
        # echo "ok not overwright";
        date>>./result/watchdog.txt;
    fi
    # . ./auto_function_elist.sh
    # printf "${sel_elist}">>./result/watchdog.txt;
    watchdog=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 mc watchdog get);
    printf "${watchdog}\n\n">>./result/watchdog.txt
}
. ./auto_function_elist.sh 4;
local_elist_count_old="${sel_elist_count}";
printf "${local_elist_count_old}\n">>./result/watchdog.txt;
printf "\n========start sel elist========\n${sel_elist}\n========\n\n">./result/watchdog.txt;
function_watchdog_get;
printf "and now we need to set watchdog --by auto test\n">>./result/watchdog.txt;
ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 raw 0x06 0x24 0x04 0x03 0x01 0x10 0x64 0x00;
# # echo "ok set watchdog";
function_watchdog_get;
watchdog_reset=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 mc watchdog reset);
printf "${watchdog_reset}">./result/watchdog_reset.txt
printf "${watchdog_reset}\n">>./result/watchdog.txt;
function_watchdog_get;
sleep 2;
function_watchdog_get;
./auto_function_process.sh 70;
printf "================\n">>./result/watchdog.txt;
. ./auto_function_elist.sh 4;
local_elist_count_end="${sel_elist_count}";
printf "${local_elist_count_end}\n">>./result/watchdog.txt;
printf "${sel_elist}">>./result/watchdog.txt；
