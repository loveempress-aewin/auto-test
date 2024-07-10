#!/usr/bin/bash
### create	:	Wed Jul 10 14:17:44 CST 2024
### date	:	.
### auto	:	lovecodingqueen
###
printf "because you use automatically test -->\n Now delete \`screenshot\` && \`resutl\` folders \n";
if [[ -d "result/" ]];then
    rm -rf result/
fi
if [[ -d "screenshot/" ]];then
    rm -rf screenshot/
fi
