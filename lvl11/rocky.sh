#!/bin/bash
clear
cat /home/lvl11/.config/scripts/assets/2/ascii.txt
export tries=$((tries-1))
echo -e "Pand 8 shoe polish cheyyumbol aan enikk oru bun kittiyirunnath : ) \n"
echo -e "====================================================================\n"
if [ $tries -le 0 ];then
    echo -e "Ini avasaram illa , Poyi pinne vaa \n"
    exit 1
else 
    if [ -f "/home/lvl11/dining_table/bun" ];then
        if md5sum --status -c /home/lvl11/.config/scripts/bun.md5;then
            echo "Mm..Bun kollam : ) "
            echo -e "Ith ninakk avashyam verum.Rahasyam aa : )\n "
            echo -e "=============\n m0j1to \n=============\n" 
        else
            echo  "ITHALLA ENTE BUN.. "            
        fi
    else
        echo -e "Dining table il bun illallo : ) \nA dining_table il ulla file inu [bun] enn peer idu \n"
    fi
    echo  "Ini $tries chance koodi und." 
fi
