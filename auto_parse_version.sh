#!/bin/bash
###	created	:	Tue May 28 14:42:51 CST 2024
###	date	:	Tue May 28 14:43:00 CST 2024
###	auto	:	love-coding-queen
auto_parse_flag=0;
global_ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
function_catch_version(){
    # if [[ "${auto_parse_flag}" == 1 ]];then
    # # $(npx playwright test tests/change.spec.js --headed>> log.txt)
    #     echo " npx npx "
    # # auto_parse_flag=2;
    #     let auto_parse_flag++;
    # fi
    # if [[ "${auto_parse_flag}" == 2 ]];then
    # fi
    if [[ "$auto_parse_flag" == 2 ]];then
        echo "=================="
        echo "| ERROR !!!!     |"
        echo "| didn't ipmitool|"
        echo "=================="
        exit 524;
    fi

    catch_bmc_version=$(ipmitool -I lanplus -H ${global_ip} -U admin -P 11111111 raw 0x1e 0x01 0x00);
    if [[ "$?" -ne 0 ]];then
        $(npx playwright test tests/change.spec.js --headed>>log.txt);
        # echo "/mnt/d/tem/WEB-auto/auto_parse_version.sh"
        # let auto_parse_flag++;
        # echo "auto_parse_flag--> ${auto_parse_flag}";
        let auto_parse_flag++;
        echo "auto_parse_flag--> ${auto_parse_flag}";
        # auto_parse_flag=1;
        function_catch_version;
    else
        function_parse;
    fi

}
function_parse(){
    update_file_name="";
    number_1=$(echo "${catch_bmc_version}"|cut -c 2-4);						#int number_1
    number_2=$(echo "${catch_bmc_version}"|cut -c 5-7);						#int number_2
    number_3=$(echo "${catch_bmc_version}"|cut -c 8-9);                     #int third_number (declare)
    number_4=$(echo "${catch_bmc_version}"|cut -c 11-13);                   #int number_4
    ######int parse_1~4 hex => decimal
    parse_1=$((16#${number_1})); parse_2=$((16#${number_2}));
    parse_3=$((16#${number_3})); parse_4=$((16#${number_4}));
    # echo "${parse_1}   ${parse_2}   ${parse_3}   ${parse_4}  ";  ## dev tr mode
    parse_name=${parse_1}.${parse_2}.$((${parse_4}*100+${parse_3}));    #char *[] parse_name

    printf " right now version : [${parse_name}]\n";
    #need_version=${need_version} $(echo "${catch_version}"|cut -d ' ' -f 3);
    #echo " out : ";
    #echo "${need_version}";											#dev verification
    #echo "${first_number}";											#dev verification
    #echo "${second_number}";											#dev verification
    #echo "${third_number}";											#dev verification
    #echo "${forth_number}";											#dev verification
    ###### exclude the same upload file with current bmc version
    #change_file_limit=$(ls ./UPLOADFILES/ | grep -v "${parse_name}"|wc -l)
    ####### fix bug if update file not only 1
    #if [ ${change_file_limit} == 1 ]
    #then
    ##change_file=$(ls ./tests/uploadFiles/ | grep -v "${parse_name}");	#char *change_file
    #change_file=$(ls ./UPLOADFILES/ | grep -v "${parse_name}");	#char *change_file
    #else
    ##echo -e "===================\n|!!!!!!ERROR!!!!! |\n| you file need   |\n|one is right now |\n|version!		   |";
    #echo -e "==============================\n| One of your files needs to |\n| consisitent with your      |\n| current BMC version        |\n|                            |\n==============================\n| right now version is  :    |\n.      ${parse_name}         "; exit 520;
    #fi
}
# function_catch_version_parse;
function_catch_version;
