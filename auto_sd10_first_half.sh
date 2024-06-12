#!/bin/bash
### created	:	Mon Jun  3 16:03:35 CST 2024
### date	:	Wed Jun 12 11:21:48 CST 2024
### auto	:	lovecoding-queen
###
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
printf "\n===============AUTO TEST SD10 SOME IPMITOOL================\n";
mc_info=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 mc info);
printf "${mc_info}">./result/mc_info.txt
lan_print=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 lan print 1);
printf "${lan_print}">./result/lan_print.txt
### `ipmitool sdr` bbu havae it
sensor=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sensor);
printf "${sensors}">./result/sensor.txt
sdr_fan=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr type fan);
printf "${sdr_fan}">./result/TEST_RECORD/Sensors/FAN.txt
sdr_temp=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr type temp);
printf "${sdr_temp}">./result/TEST_RECORD/Sensors/TEMPERATURE.txt
sdr_voltage=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr type voltage);
printf "${sdr_voltage}">./result/TEST_RECORD/Sensors/voltage.txt
sdr_PSU=$(ipmitool -I lanplus -H${global_ip} -Uadmin -P11111111 sdr|grep PSU);
printf "${sdr_PSU}">./result/TEST_RECORD/Sensors/PSU.txt
### use playwright --> need to catch console.log!!! use this way better than direct!!
printf "\n================NOW PLAYWRIGHT SCREENSHOT NEED SPEND MORE TIME================\n";
npx_test=$(npx playwright test tests/setting_screenshot.spec.js --headed);
# printf "${npx_test}";
