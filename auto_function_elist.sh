#!/bin/bash
### created	:	Thu Jun  6 13:11:42 CST 2024
### date	:	Fri Jun  7 11:10:54 CST 2024
### auto	:	lovecoding-queen
###	Originally, it was an experimental project. Initially,
### there were issues with using a return function, but later,
### it was discovered that an alternative approach could still achieve the desired outcome
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
count=0;
max=1;     ####  5121 real times --> 3times
if test $# -gt 0;then max="$1"; fi
function_error(){
    while (( ${count} < ${max} ));do
        let count++;
        sleep 5;
        function_elist;
    done
    if (( "${count}" == "${max}" ));then
        echo " BMC status : power off ";
        exit 234;
    fi
}
function_elist(){
    sel_elist=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist);
    if (( "$?" > 0 ));then
        function_error;
    fi
        sel_elist_count=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel elist|wc -l);
    if [[ "${sel_elist}" == "" ]];then
        printf "EMPTY";
        sel_elist="SEL has no entries";
        sel_elist_count=0;
    else
        # printf "${sel_elist}\n\n";
        printf "\n\n";
    fi
    # printf "${sel_elist}";
}
function_elist;
# return ${sel_elist};
# function_error;
