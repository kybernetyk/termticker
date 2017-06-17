#!/bin/bash

WIDTH=`tput cols`
HEIGHT=`tput lines`

OFFSET=$((HEIGHT/3))
PRICE=0
OLDPRICE=0

clear
tput civis #turn off cursor

while true
do
	
	tput cup 0 0
	PRICE=`./dgb.rb`
	for ((i=1; i<=$OFFSET; i++)); do
		echo ""
	done

	figlet -d fonts -x -c -f fraktur -W -w $WIDTH $PRICE |lolcat -S 1 #-a -d 5

	tput civis #lolcat -a turns on cursor
	sleep 1
	

done

tput cnorm #turn on cursor
