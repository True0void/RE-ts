#!/bin/bash 
RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
YELLOW="\033[0;33m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
RES="\033[0m"



echo " "
echo ""
function assci {
  clear
  cat << "EOF" 
                 ________________
        .--.     |              |
       |o_o |    |              |
       |:_/ |    |              |
      //   \ \   |              |
     (|     | )  |              |
    /'\_   _/`\  | 3 : Exit     |
    \___)=(___/  |______________|

EOF
}



assci
#read -p "Rentre l option : " option
while true; do
  read -p "Enter the option : " option
case $option in 
  1)
    echo "1"
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
