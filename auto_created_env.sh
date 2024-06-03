#!/bin/bash
### created	:	Tue May 21 13:25:20 CST 2024
### date	:	.
###
if [ ! -d ./UPLOADFILES/ ];
then
    mkdir  -p UPLOADFILES/
fi
if [ ! -f ./UPLOADFILES/ANCHOR.java ]
then
    echo "public class Anchor{">./UPLOADFILES/ANCHOR.java;
    echo "	public static void main(String[] args){">>./UPLOADFILES/ANCHOR.java;
    echo "		System.out.println(\" this is anchor \");">>./UPLOADFILES/ANCHOR.java;
    echo "	/*">>./UPLOADFILES/ANCHOR.java;
    echo "	dGhpcyBpcyBhbmNob3IKIE9SIOWPr+S7peiqquaYr+iomOmMhOm7niDpgoTkuI3mmK/ngrrkuoYg">>./UPLOADFILES/ANCHOR.java;
    echo "	Z2l0ID09Cuawo+atuwphbnl3YXkgOnJlY29yZAoyMDI0LzAyLzA2Cg==">>./UPLOADFILES/ANCHOR.java;
    echo "	*/">>./UPLOADFILES/ANCHOR.java;
    echo "	}">>./UPLOADFILES/ANCHOR.java;
    echo "}">>./UPLOADFILES/ANCHOR.java;
fi
# if [[ ! -d ./result ]];then
#     mkdir result/;
# fi
if [[ ! -d ./result/bbu ]];then
    mkdir -p ./result/bbu/;
fi
if [[ ! -d ./result/TEST_RECORD/Sensors/ ]];then
    mkdir -p ./result/TEST_RECORD/Sensors/;
fi
if [[ ! -d ./result/TEST_RECORD/Log_Reports/ ]];then
    mkdir -p ./result/TEST_RECORD/Log_Reports/;
fi
