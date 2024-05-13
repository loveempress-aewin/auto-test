#!/bin/bash
### {{{
### created	:	Mon May  6 11:48:17 CST 2024
### date	:	Wed Mon May  6 11:48:59 CST 2024
### auto	:	loveloveempress
### readme	:	this is set ip
###
###}}}
#echo -e "set ip"

file_check="./check.sh"
function_read(){
    ## todo
    echo "";
}
funciton_write(){
    ### todo [0] : check if the file exists
    if [[ ! -f javascript_ip.js ]]
    then
        echo "// @ts-check" > javascript_ip.js ;
        echo 'export let ip="192.168.120.173"'
    else
        var_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3|cut -d '"' -f 2)
    fi
    bash ${file_check};
    ### this is not use --> because every case maybe have diff result
    ### todo [0] : contiune or new
    #function_check;
    local res=$?;
    if [[ ${res} == 100 ]]
    then
        echo "get yes 100";
    else
        echo " get no 111" ;
    fi
    #echo "in function_write  result : ${res}";
    ##echo "[${check_ans}]" ### old use the function
    ### todo [1] : write ip in a global variable

}
funciton_write;
