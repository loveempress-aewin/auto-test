#!/bin/bash
### {{{
### created	:	Mon May  6 11:48:17 CST 2024
### date	:	Mon May 20 17:20:45 CST 2024
### auto	:	loveloveempress
### readme	:	this is set ip
###
###}}}
#echo -e "set ip"

file_check="./check.sh"

function_detch_file(){
    ### todo [0] : check if the file exists
    if [[ ! -f javascript_ip.js ]]
    then
        echo "// @ts-check" > javascript_ip.js ;
        echo 'export let ip="192.168.120.173"'>> javascript_ip.js;
        echo " created core ip file ";
        function_detch_file;
    else
        var_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3|cut -d '"' -f 2)
        echo " You current IP address is [${var_ip}] ";
        echo " Do you want to continue using it? (press y/n)";
        funciton_continue_using_ip;
    fi
}

funciton_continue_using_ip(){
    bash ${file_check};
    ### this is not use --> because every case maybe have diff result
    ### todo [0] : contiune or new
    #function_check;
    #local res=$?;
    res=$?;
    if [[ ${res} == 100 ]]
    then
        # echo "get yes 100";
        echo " you use ip is [${var_ip}]"
    else
        # echo " get no 111" ;
        function_resetIP;
    fi
    #echo "in function_write  result : ${res}";
    ##echo "[${check_ans}]" ### old use the function
    ### todo [1] : write ip in a global variable
}

function_resetIP(){
    ###todo set ip
    read -p " input IP address : " var_ip;
    echo " confirm that the IP you want to use [${var_ip}]";
    bash ${file_check};
    local res=$?;
    if [[ ${res} == 100 ]]
    then
        echo "// @ts-check" > javascript_ip.js ;
        # echo 'export let ip="${var_ip}"'>> javascript_ip.js;
        echo "export let ip=\"${var_ip}\"">> javascript_ip.js;
        var_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3|cut -d '"' -f 2)
        echo " [${var_ip}]";
    else
        echo " rewrite " ;
        function_resetIP;
    fi
}
# funciton_write;
# funciton_continue_using_ip
function_detch_file;
