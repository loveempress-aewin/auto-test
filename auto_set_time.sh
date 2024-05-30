#! /bin/bash
### created	:	Wed May 29 13:21:04 CST 2024
### date	:	.
### auto	:	lovecodingqueen
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
function_get_local_time(){
    loc_month=$(date "+%m");
    loc_date=$(date "+%d");
    loc_hour=$(date "+%H");
    echo -e "l-m [${loc_month}] \n l-d [${loc_date}] \n l-h : [${loc_hour}] ";
    function_get_bmc_time;
}
function_get_bmc_time(){
    get_time=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel time get);
    # bmc_month="${get_time}"|cut -d ' ' -f 1|cut -d '/' -f 1;
    bmc_month=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel time get|cut -d ' ' -f 1|cut -d '/' -f 1);
    bmc_date=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel time get|cut -d ' ' -f 1|cut -d '/' -f 2);
    echo "get_time : ${get_time}";
    echo "bmc_M : [${bmc_month}]";
    echo "bmc_d : [${bmc_date}]";
    bmc_hour=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sel time get|cut -d ' ' -f 2|cut -d ':' -f 1);
    echo "bmc_h : [${bmc_hour}]";
    # echo "bmc_mount: ${bmc_month}";
    function_compare_time;
}
function_compare_time(){
    if [[ ${loc_month} == ${bmc_month} ]];then
        echo "month same";
    fi
    if [[ ${loc_date} == ${bmc_date} ]];then
        echo "date same";
    fi
    if [[ ${loc_hour} == ${bmc_hour} ]];then
        echo "hour same";
    fi
    if [[ ${loc_month} == ${bmc_month} && ${loc_date} == ${bmc_date} && ${loc_hour} == ${bmc_hour} ]];then
        echo " time ~~ ~~ same";
    else
        echo " Correction Regression - Time -- ";
        $(npx playwright test tests/setdate.spec.js --headed);
        function_get_local_time;
    fi
}
function_get_local_time;
