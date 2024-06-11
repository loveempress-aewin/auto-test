#!/bin/bash
### created	:	Thu Jun  6 10:37:50 CST 2024
### date	:	Fri Jun  7 11:35:48 CST 2024
### auto	:	lovecoding-queen
###
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
tem_flag=0;
printf "">./result/watchdog.txt;
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
function_execute(){
    . ./auto_function_elist.sh 4;
    local_elist_count_old="${sel_elist_count}";
    printf "index[0]:-->[${local_elist_count_old}]\n">>./result/watchdog.txt;
    printf "\n========start sel elist========\n${sel_elist}\n========\n\n">>./result/watchdog.txt;
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
    ./auto_function_process.sh 10;
    printf "================\n">>./result/watchdog.txt;
    . ./auto_function_elist.sh 4;
    local_elist_count_end="${sel_elist_count}";
    printf "index[1]:[${local_elist_count_end}]\n">>./result/watchdog.txt;
    printf "${sel_elist}\n">>./result/watchdog.txt;
    let tem_flag++;
    printf "\n\n~~~~~~~~\n old:[${local_elist_count_old}]\nend:[${local_elist_count_end}]\n";
    printf "\n tem[${tem_flag}]\n";
    function_monitoring;
}
#### fix bug : if you need to repeat command need to put function...
function_monitoring(){
if [[ "${local_elist_count_old}"=="${local_elist_count_end}" ]];then
    if [[ ${tem_flag} == 1 ]];then
        printf "\n @@@@@@@\n";
        function_execute;
    else
        printf "\n\nERROR!!!!because you catch time to fast!!!\n\n">>./result/watchdog.txt;
        printf "">./result/watchdog.txt;
        ###  not use for dev
        exit 111111;
    fi
    printf " Your watchdog did not execute precisely! ";
fi
}
function_execute;
