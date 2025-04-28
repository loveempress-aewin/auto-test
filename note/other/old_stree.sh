#!/bin/bash

filename="CBS_XXXX_stress.txt"
var_ip=$(grep ip javascript_ip.js | cut -d ' ' -f 3 | cut -d '"' -f 2);
function_detech(){
if [[ "$?" == "1" ]]
then
	echo "OMG";
	exit 520;
fi
}

### --- main ----

ipmitool -I lanplus -H ${var_ip} -U admin -P 11111111 lan print 1 >> $filename
function_detech;
echo "===== Sensor List =====" >> $filename
ipmitool -I lanplus -H ${var_ip} -U admin -P 11111111 sdr >> $filename
function_detech;
echo "##### Start stress #####" >> $filename

while [ 1 ]
do
	date >> $filename
	ipmitool -I lanplus -H ${var_ip} -U admin -P 11111111 sdr | grep s"ns\|nr\|cr" >> $filename
	function_detech;
	echo "==============================" >> $filename
	echo "" >> $filename
done
