#!/bin/bash
### created	:	Tue Jun  4 16:02:12 CST 2024
### date	:	Thu Jun  6 10:25:28 CST 2024
### auto	: lovecoding-queen
###
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
# function_elist(){
#     sel_elist=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist);
#     if [[ "${sel_elist}" == "" ]];then
#         printf "EMPTY";
#         sel_elist="SEL has no entries";
#     else
#         printf "${sel_elist}";
#     fi
# }
function_clear(){
    printf "================clear================\n"
    sel_clear_0=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel clear);
    # printf "${sel_clear_0}\n";
    printf "================clear================\n"
}
sel_v=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel -v info);
date>./result/sel_info.txt;
printf '%s' "${sel_v}">>./result/sel_info.txt;
. ./auto_function_elist.sh
printf "${sel_elist}">./result/sel_elist_0.txt
# sleep 20;
./auto_function_process.sh 8;
function_clear;
printf "${sel_clear_0}">./result/sel_clear_0.txt;
###double check the clear is comfirm clear
. ./auto_function_elist.sh;
printf "${sel_elist}">./result/sel_elist_check_clear.txt
####  manually create an event && check can created new event
event_manually=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 event 1);
printf "${event_manually}\n\n">./result/sel_elist_event.txt;
. ./auto_function_elist.sh;
printf "${sel_elist}">>./result/sel_elist_event.txt;
function_clear;
