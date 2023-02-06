#!/bin/bash

clear
echo ""
figlet "Ping-Loc-Bot"
echo "Welcome to Ping Locator Bot"
echo ""
echo "The main thing that this bot do is basically to locate and detect the icmp protocol"
echo "to advice which device or people are trying to know if our pc or server is up"
echo "and try to know the most info possible about them, preventing attacks like DDOS,attacks etc..."
echo ""
echo "You will probably need to have access to root or have sudo permission"
echo ""
#if [[ $EUID != 0 ]] 
#then 
#echo "necesitas ser root"
#exit
#fi
echo "Loading..."
sleep 5

 echo "[*] Creating Crontab task"
    telegram=$(find / -name telegraming.sh)
    echo "* * * * * bash $telegram" >> /var/spool/cron/crontabs/root
    echo "[✓]Crontab task created"
    echo ""
sleep 2

echo "                  [/\]Let's begin"
echo ""
echo "We are going to save the file in the extension .pcap to be read and saved"
echo "And your fantastic output file its going to have the name capture.pcap in the captures folder"
#bash telegraming.sh
echo ""
echo "Loading ..."
sleep 2
tshark -O icmp -w captures/capture.pcap >> captures/grep.txt | tail -f captures/grep.txt | grep "(Echo (ping) reply)" -A 18 -B 2 >> captures/grep2.txt




















