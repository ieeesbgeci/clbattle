#!/bin/bash
echo "The Devine fountain : ) "
if [ -f "/home/lvl7/fountain/vellam" ];then
    if md5sum --status -c /usr/home/.config/scripts/fountain/vellam.md5;then
        echo "Fountain activated : )"
        echo -e "=============\np4rzm_p0r1\n=============\n" 
    else
        echo "ee vellam original alla : )"
    fi
else
    echo "Vellam vanilla : )"
fi