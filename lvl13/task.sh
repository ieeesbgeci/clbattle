#!/bin/bash
target='/home/lvl5'
key_num=$(($(</dev/urandom tr -dc 1-9 |head -c6 )%2000))
echo "target line : $key_num"
for i  in {1..2000}
do
    if [ $i == $key_num ];then
        echo "w9xR8Ia0hJz4J_{{v3gam_0od1Kk0}}_oLqnIChdlTJ1t" >>$target/escape.txt
    else
        txt=$(</dev/urandom tr -dc A-Za-z0-9 | head -c45)
        echo $txt>>$target/escape.txt
    fi
done
echo "done : )"