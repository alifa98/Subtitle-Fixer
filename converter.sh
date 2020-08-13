#!/bin/bash


#    _    _ _   _____                _ _ 
#   / \  | (_) |  ___|_ _ _ __ __ _ (_|_)
#  / _ \ | | | | |_ / _` | '__/ _` || | |
# / ___ \| | | |  _| (_| | | | (_| || | |
#/_/   \_\_|_| |_|  \__,_|_|  \__,_|/ |_|
#                                 |__/   
#
#	by Ali faraji, Feb 2019
#	Subtitle Encoding Fixer.   (^_^)



TO_ENCODING="UTF-8"
if [ ! -f "converted" ]; then
    mkdir converted
fi
for  file  in  *.srt; do
	FROM_ENCODING=`uchardet "$file" `
	CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"
     	$CONVERT   "$file"   -o  "./converted/${file%.srt}[utf8].srt"
done
exit 0
