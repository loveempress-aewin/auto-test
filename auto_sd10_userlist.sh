#! /bin/bash
### created	:	Fri May 31 15:44:13 CST 2024
### date	:	Mon Jun  3 16:04:54 CST 2024
### auto	: loveloveempress

global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);

user_list_0=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 user list)
# echo -en "love me \r";
# echo -e "1314 \r";
printf "${user_list_0}">./result/user_list_0.txt;
grep -i 'admin' result/user_list_0.txt>./result/user_admin_0.txt;
grep 'false' ./result/user_admin_0.txt;
if (( "$?" == 0 ));then
    ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 channel setaccess 1 2 callin=on ipmi=on link=on privilege=4
    sleep 21;		###Im not sure how many time (but in my case 21s)
    user_list_1=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 user list);
    printf "${user_list_1}">>./result/user_list_1.txt;
else
    printf "now all channel open";
fi
rm ./result/user_admin_0.txt;
