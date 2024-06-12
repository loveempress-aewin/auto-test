#! /bin/bash
### created	:	Tue May 21 17:01:35 CST 2024
### date	:	Tue May 28 14:43:35 CST 2024
### auto	:	love-coding-queen
# origin_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2) ; # ip=origin_ip;
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
# echo "ip ---> ${global_ip}";   ### sometimes ...it is will disappear
# echo "ip -====================--> ${ip}";
function_change_password(){
    $(npx playwright test tests/change.spec.js --headed>> log.txt)
    function_catch_version;
}
catch_version=$(ipmitool -I lanplus -H "${global_ip}" -U admin -P 11111111 raw 0x1e 0x01 0x00);
if [[ "$?" == 0 ]]
then
    echo "";
else
    # echo "XXXXXXX";
    echo " try change password!! "
    function_change_password;
fi
function_catch_version(){
echo " /mnt/d/tem/WEB-auto/auto_get_version.sh--> IP : [${global_ip}]"
# catch_version=$(ipmitool -I lanplus -H "${global_ip}" -U admin -P 11111111 raw 0x1e 0x01 0x00);
# if [[ "$?" == 0 ]]
# then
#     echo "";
# else
#     # echo "XXXXXXX";
#     echo "error!!!!"
#     exit 1314;
# fi
. ./auto_parse_version.sh;
}
. ./auto_parse_version.sh;
# echo " -- origin_ip : [${origin_ip}]"
# echo " -- catch_version : ${catch_version}";
