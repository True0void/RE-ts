#!/bin/bash 
RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
YELLOW="\033[0;33m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
RES="\033[0m"

function os {
  clear
  if [ -e /etc/os-release ]; then
    source /etc/os-release
    OS=$ID
    echo " you are on $OS :) nice"
    sleep 1
  else
  echo "os not found"
fi
}

echo ""
echo ""
function assci {
  clear
  printf "${CYAN}                   \n"
  printf "        .--.       ________________\n"
  printf "       |o_o |      | 1 : app-re   |\n"
  printf "       |:_/ |      |              |\n"
  printf "      //   \\ \\     | 2 : Debug    |\n"
  printf "     (|     | )    |              |\n"
  printf "    /'\\_   _/ \`\\   | 3 : Exit     |\n"
  printf "    \\___)=(___/    |______________|\n"
  printf "\n"
  printf "${RES}\n"

}

if [ "$1" = "-z" ];
then
  assci
else
  os
  assci
fi


function script1 {
  while true ; do
    read -p "give the path of the target : " script
    if [ -z "$script" ]; then
      echo "give me a script :( "
    else
      if [ -f "$script" ];then
        file "$script"
      else
        echo "erreur !"
      fi
    fi
  done
}


#read -p "Rentre l option : " option
while true; do
  read -p "Enter the option : " option
case $option in 
  1)
    script1
    ;;
  2)
    echo "2"
    ;;
  3)
    echo "bye"
    break
    ;;
esac
done
