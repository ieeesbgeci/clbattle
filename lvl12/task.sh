#!/bin/bash
target='/home/lvl12'
echo -e "=============\ns4mbhaR4m\n=============\n" > $target/rahasyam
mkdir $target/keys
openssl genrsa -out $target/keys/private_key.pem 1024    
openssl rsa -in $target/keys/private_key.pem -out $target/keys/public_key.pem -outform PEM -pubout
mv $target/keys/private_key.pem $target/ak_private.pem
cd $target
openssl rsautl -encrypt -inkey $target/keys/public_key.pem -pubin -in rahasyam -out ak47.locked
rm -rf $target/keys
rm $target/rahasyam

