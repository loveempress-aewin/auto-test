#! /bin/bash
### created	:	Tue May 21 11:42:11 CST 2024
### date	:	Tue Jun 11 17:19:52 CST 2024
### auto	:	loveloveempress
### TODO:check have environment
file_create_environment="./auto_created_env.sh"
bash ${file_create_environment};
### TODO:check ip address (input)
file_setip="./auto_ip.sh";
bash ${file_setip};
. ./auto_get_version.sh
### TODO:input how loop number (input)
until [[ ${execute} == +([0-9]) ]];do
    read -p " execute how many times ? (input number) : " execute
    if [[ ${execute} -eq 0 ]]
    then
        # echo " error didnt input 0";
        echo "";
    else
        echo "  ";
    fi
done;
# update_times=0;
#######read -p "how many times do you want to update BMC?" update_times;
### TODO:check update file (have two files)
. ./auto_set_update_file_rule.sh ${execute};
# file_set_update_file="./auto_set_update_file.sh";
# bash ${file_set_update_file};
. ./auto_set_update_file.sh ${execute};
### TODO:check ipmitool can use
### TODO:check bmc version
file_get_version="./auto_get_version.sh"
# bash ${file_get_version};
# origin_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2) ;
# ip=origin_ip;
# ip=${origin_ip};
# echo "ip -====================--> ${ip}";
# catch_version=$(ipmitool -I lanplus -H "${ip}" -U admin -P 11111111 raw 0x1e 0x01 0x00);
# if [[ "$?" == 0 ]]
# then
#     echo "correct";
# else
#     echo "XXXXXXX";
# fi
# echo " -- origin_ip : [${global_ip}]"
# echo " -- catch_version : ${catch_version}";
# until [[ ${execute} == +([1-9]) ]];do
auto_update_bmc_flag=0;
function_auto_switch_update_file(){
    echo "";
    . ./auto_parse_version.sh;
    # echo "now bmc version : ${parse_name}";  #### dev debug
    change_version=$(ls UPLOADFILES/|grep -v "${parse_name}");
    date;
    echo "will change file : ${change_version}";
    if [[ "$change_version" == "" ]];then
        echo "  /mnt/d/tem/WEB-auto/auto_update_bmc --> CHANGE VERSION === '' ";
        if [[ "${auto_update_bmc_flag}" == 0 ]];then
        echo -e "because change_version error so need to test password!!" ;
        $(npx playwright test tests/change.spec.js --headed);
        auto_update_bmc_flag=1;
        function_auto_switch_update_file;
        else
            echo " DIDNT USE ERROR auto_update_bmc L52 ";
            exit 52;
        fi
    fi
    echo -e "// @ts-check\nexport let updateBMCfile=\"${change_version}\"">bmc_update.js
    echo "change_version --> ${change_version}";
    echo -e " parse_name -->  ${parse_name} ";
}
for i in $(seq 1 ${execute})
do
    if [[ "${i}" -gt 1 ]];then
        # echo " doit [${i}]";
        function_auto_switch_update_file;
    fi
    echo " !!!====> ${i}" >> log.txt;
    $(npx playwright test tests/change.spec.js --headed>> log.txt)
    $(command -v date >> log.txt)
    sleep 10;
    # function_catch_ver;
    # if (( ${i} > 1 ));then
    #     function_catch_version;
    # fi
    $(ipmitool -I lanplus -H ${global_ip} -U admin -P 11111111 raw 0x1e 0x01 0x00 >> log.txt);
    $(date >> log.txt)
    $(npx playwright test tests/uploadfile.spec.js --headed >> log.txt)
    ###----- sleep 2m;----------------
    var_nmm=1;
    var_sum=100;
    var_max=120;
    # for ((var_nnm=0 ; var_nnm<121 ; var_nnm++ ));do
    # for var_num in $(seq ${var_nmm} ${var_max});do
    #     # echo -ne ''
    #     sleep 1;
    #     function_P_bar ${var_num} ${var_max};
    # done
    # printf '\nFinished!\n' ;
    ./auto_function_process.sh 120;
    $(npx playwright test tests/change.spec.js --headed>> log.txt)
    if [ ${i} -eq ${execute} ];
    then
        #echo " this is last one ";
        $(npx playwright test tests/change.spec.js --headed >> log.txt);
    fi
done
