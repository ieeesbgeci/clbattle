#!/bin/bash
parent_dir='/home/lvl2'
mkdir $parent_dir/doors
for i in {1..200}
do
dir_name=$(</dev/urandom tr -dc A-Za-z0-9 | head -c12)
mkdir $parent_dir/doors/$dir_name
echo  -e "GrrrrRrrr.\nMunnottu vannal kollum nyan.\nIthalla aa vaadil\nTry finding rahasyam : )\n" > $parent_dir/doors/$dir_name/$(</dev/urandom tr -dc A-Za-z0-9 | head -c30).txt
done 
target=$(</dev/urandom tr -dc A-Za-z0-9 | head -c12)
mkdir $parent_dir/doors/$target
echo -e "===================\nk4rukaVay4l_kuruv1\n===================\n" > $parent_dir/doors/$target/rahasyam