#!/bin/bash
target='/home/lvl6'
gcc $target/task.c -O3 -o $target/lever
echo "chmod u-x $target/lever" >> .bashrc
echo "alias strings='echo -e \"Athokke veeno : )\n\" '" >> .bashrc
rm $target/task.c