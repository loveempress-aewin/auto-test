#!/bin/bash
###
###
###
if [ ! -d ./UPLOADFILES/ ];
then
    mkdir UPLOADFILES/
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
