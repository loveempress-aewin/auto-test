#!/bin/bash
### created	:	Thu Jun  6 13:11:42 CST 2024
### date	:	Thu Jun  6 16:53:46 CST 2024
### auto	:	lovecoding-queen
###	Originally, it was an experimental project. Initially,
### there were issues with using a return function, but later,
### it was discovered that an alternative approach could still achieve the desired outcome
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
function_elist(){
    sel_elist=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist);
    if [[ "${sel_elist}" == "" ]];then
        printf "EMPTY";
        sel_elist="SEL has no entries";
    else
        # printf "${sel_elist}\n\n";
        printf "\n\n";
    fi
}
function_elist;
# return ${sel_elist};
