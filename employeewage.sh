#!/bin/bash
read -p "choose 1 for fulltime and 2 for parttime" n
fulltime=8
parttime=4
salary=0
perhrrate=20
case $n in
1)
echo "fulltame wage"
salary=$(( $fulltime * $perhrrate ))
echo $salary
;;

2)
echo "parttime wage"
salary=$(( $parttime*$perhrrate ))
echo $salary
;;

3)
echo "invalid choice "
;;
esac
