#!/bin/bash
echo "Monitorizacion en vivo"
chat_id="1977766345" 
buscar=$(find / -name grep2.txt)
text=$(tail -18 $buscar)
#grep -m1 "(Echo (ping) reply)" -A 18 -B 2

curl -s -X POST https://api.telegram.org/bot5970147074:AAH6nSHBHWn3T7d6DYR_3GZuf5EU9w3yd1I/sendMessage -d chat_id=$chat_id -d text="$text"







