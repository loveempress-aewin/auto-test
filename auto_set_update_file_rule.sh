#!/bin/bash
### created	:	Tue May 21 13:35:33 CST 2024
### date	:	Tue May 21 14:47:49 CST 2024
###
limit_count=0; ###[ref](old_updateBMC)
    OIFS="$IFS";
    IFS=$'\n';
### TODO: comfirm that there are no extra files
### TODO: confirm that the suffix is ending in ima
### TODO: comfirm that there are two files(otherwise,interactive deletion will occur).
function_no_extra_files(){
    for file in $(ls ./UPLOADFILES/)
    do
        Extension=${file##*.}
        case "${Extension}" in
            java)
                rm -v ./UPLOADFILES/$file;;
            ima)
                echo "";;
            *)
                rm ./UPLOADFILES/$file;;
        esac
    done
    function_error;
    limit_count=$(ls ./UPLOADFILES/|wc -l);

    ###### displays file count statu
    if [[ ${limit_count} -gt 2 ]]
    then
        echo -e "\n\n you have  \e[41m${limit_count}\e[0m  files in the /UPLOADFILES "
    else
        echo -e "\n\n you have  \e[42m${limit_count}\e[0m  files in the /tests/UPLOADFILES "
    fi
    IFS="$OIFS";

    while [ ${limit_count} -gt 2 ]
    do
        #echo -e "only 2 file u need to delete some file \n    y=>yes delete\n    n=>no  delete"
        echo -e "|============================|\n| !!BREAK THE RULE           |\n| only 2 files               |\n| U need to delete some file |\n|.                          .|\n|<<interactive delete mode >>|\n| press y => yes delete      |\n|       n => no  delete      |\n|============================|\n\n";
        for file_n in $(ls ./UPLOADFILES)
        do
            rm -vi ./UPLOADFILES/${file_n};
            limit_count=$(ls ./UPLOADFILES/ |wc -l);
            echo " check update file -> ${limit_count}";
            if [[ ${limit_count} == 2 ]]
            then
                break;
            fi
        done
    done
    ### display corresponding files
    for file in $(ls ./UPLOADFILES)
    do
        count_uploadfile=$((${count_uploadfile}+1));
        echo  "[${count_uploadfile}    ->    ${file}]";
    done
    function_error;
}
function_error(){
    limit_count=$(ls ./UPLOADFILES/ |wc -l)
    # echo " limit_count --->  ${limit_count}";
    if [[ ${limit_count} == 1 ]] ; then
        ### if only one update bmc file
        echo -e "==============================\n| ERROR!!! need 2 files      |\n| you only put one file      |\n=============================="; exit 111;
    fi
}
function_no_extra_files;
