#!/bin/bash
#### {{{
#### created	:	Mon May  6 17:44:50 CST 2024
#### date	:	Mon May  6 17:45:02 CST 2024
#### auto	:	loveloveempress
#### readme	:	this is check function ...
#### .		:	I pulled out this feature separately because
#### .		:	it was too lengthy to be used.【】
#### }}}
### [return mode](https://stackoverflow.com/questions/17336915/return-value-in-a-bash-function)
function_check2(){
    check_ans="";
    tem_flag=1;
    send_num=0;
    #echo "[${check_ans}]"
    # echo " IP : ${var_ip}"
    #read -p " continue using this IP ( press y or n)" check_ans
    while [[ ${tem_flag} == 1 ]]
    do
        tem_flag=1;
        read -p " continue using this IP( press y or n) --->" check_ans
        case ${check_ans} in
            [Yy]|[Yy][Ee][Ss])
                tem_flag=0;
                send_num=100;
                #echo "yes 😄";
                ;;
            [Nn]|[Nn][Oo])
                tem_flag=0;
                #echo "no";
                send_num=111;
                ;;
        esac
    done
    #echo "the return : --> ${send_num} " ;
    return ${send_num};
}
function_check2;
