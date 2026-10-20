#!/bin/bash 
echo " "
echo ""



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
