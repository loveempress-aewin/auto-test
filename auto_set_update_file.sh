#!/bin/bash
###	created	:	Tue May 28 14:46:05 CST 2024
### date	:	Tue May 28 14:46:18 CST 2024
### auto	:	love-codeing-queen
ip=$(grep ip javascript_ip.js|cut -d ' ' -f 3| cut -d '"' -f 2);
if [[ "$?" == 0 ]];then
    echo "  ";
else
    exit 1314;
fi
if [[ "${ip}" == "" ]];then
    echo " ip is empty ..."
    exit 1314;
fi

. ./auto_parse_version.sh;
echo "now bmc version : ${parse_name} "
echo "${ip}";
# echo -e " \n\n parse_name : ${parse_name}  \n\n ";
function_same_filename(){
    # parse_name='1.0.0';		##### test code I love it --loveloveempress
    # ls UPLOADFILES/|grep "${parse_name}";
    option_file_0=$(ls UPLOADFILES/|grep "${parse_name}");
    if [[ "$?" == 0 ]];then
        # echo "have same name";
        # option_file_0=$(ls UPLOADFILES/|grep "${parse_name}");
        option_file_2=$(ls UPLOADFILES/|grep -v "${parse_name}");
        function_let_user_choose;
    else
        # echo "no like name file";
        function_no_like_file;
    fi
}
function_no_like_file(){
    local tem_number=0;
    for file in $(ls -t ./UPLOADFILES/)
    do
        # option_file_${tem_number}=\""${file}"\";
        # option_file_${tem_number}=$(cat ${file});
        # option_file_0="love it";
        # option_file_${tem_number}=file;
        echo " [${tem_number} --> ${file} ]";
        filename=$(basename "${file}");
        echo " filename=> ${filename}";
        varname="option_file_${tem_number}";
        # eval "${varname}=$(cat "./UPLOADFILES/${file}")";
        eval "option_file_${tem_number}=${file}";
        tem_number=$((${tem_number}+2));
    done
    function_let_user_choose;
}
function_let_user_choose(){
    # echo "${option_file_0}    +++ ${option_file_2} ";
    detech_flag=1;
    echo " Select the file you want to update ";
    echo -e "[1] ---> ${option_file_0}\n\n[2] ---> ${option_file_2}";
    while [[ ${detech_flag} == 1 ]]
    do
    read select_update_file;
    case "${select_update_file}" in
        1)
            echo -e "// @ts-check\nexport let updateBMCfile=\"${option_file_0}\"">bmc_update.js
            echo "write --> ${option_file_0}";
            detech_flag=0;
            ;;
        2)
            echo -e "// @ts-check\nexport let updateBMCfile=\"${option_file_2}\"">bmc_update.js
            echo "write --> ${option_file_2}";
            detech_flag=0;
            ;;
        *)
            echo -e "[1] ---> ${option_file_0}\n\n[2] ---> ${option_file_2}";
            echo " PLZ -->  press (1 OR 2 )";
            ;;
    esac
    done

}

function_same_filename;
