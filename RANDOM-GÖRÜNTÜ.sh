#!/bin/bash

if [[ $1 == güncelle ]];then
	cd files
	bash güncelleme.sh güncelle
	exit
fi
cd files
bash güncelleme.sh
bash banner.sh

if [[ ! -a $PREFIX/bin/curl ]];then
        echo
        echo
        echo
        printf "\e[32m[✓]\e[97m CURL PAKETİ KURULUYOR"
        echo
        echo
        echo
        pkg install curl -y
fi
printf "\e[32mÇIKMAK İÇİN \e[31mX \e[97mYAZ"
echo
echo
echo
while :
do	echo
	echo
	echo
	read -e -p $'\e[31m─────[ \e[97m4 HANELİ RAKAM GİRİNİZ\e[31m ]─────►  \e[0m' rakam
	if [[ $rakam == x || $rakam == X ]];then
	       exit       
	fi
	echo
	echo
	echo
	printf "\e[32mÇIKAN LİNKİ KOPYALA GOOGLEYA YAPIŞTIR\e[33m"
	echo
	echo
	echo
        curl -L -s -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" https://prnt.sc/rc$rakam | grep -o content=\"https://[^,]\*\" |grep -o https[^,]\* |awk -F '"' '{print $1}'
done
