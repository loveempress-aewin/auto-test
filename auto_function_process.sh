#!/bin/bash
### created	:	Wed Jun  5 17:00:25 CST 2024
### date	:	.
### auto	:	lovecoding-queen
function_P_bar(){
    ### if long time need to change variable (max) --loveloveempress
    let love_p=(${1}*100/${2}*100)/100;
    let love_d=(${love_p}*4)/10;
    # let love_l=40-${love_d};
    let love_l=40-${love_d};
    _aria=$(printf "%${love_d}s");
    _caroline=$(printf "%${love_l}s");
    printf "\r Progress : [${_aria// /▇} ${_caroline// /-}] ${love_p}%%";
}
var_nmm=1;
var_sum=100;
var_max="$1";
printf "\n\n max : ${var_max}"
# for ((var_nnm=0 ; var_nnm<121 ; var_nnm++ ));do
for var_num in $(seq ${var_nmm} ${var_max});do
    # echo -ne ''
    sleep 1;
    function_P_bar ${var_num} ${var_max};
done
printf '\nFinished!\n';
