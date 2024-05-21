function_check(){
    check_ans="";
    tem_flag=1;
    send_num=0;
    echo "[${check_ans}]"
    echo " IP : ${var_ip}"
    #read -p " continue using this IP ( press y or n)" check_ans
    while [[ ${tem_flag} == 1 ]]
    do
        tem_flag=1;
        read -p " continue using this IP( press y or n)" check_ans
        case ${check_ans} in
            [Yy]|[Yy][Ee][Ss])
                tem_flag=0;
                send_num=0;
                echo "yes 😄";
                ;;
            [Nn]|[Nn][Oo])
                tem_flag=0;
                echo "no";
                send_num=1;
                ;;
        esac
    done
    echo "the return : --> ${send_num} " ;
    return ${send_num};
}
