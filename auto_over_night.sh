#! /bin/bash

stop_time=0.5;
# global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
. ./auto_parse_version.sh;
local_over_night_num=0;

while [[ true ]];
do
    ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 event 1;
    let local_over_night_num++;
    printf "now $(date) -->  execute ${local_over_night_num} -- \n";
    sleep ${stop_time};
done
