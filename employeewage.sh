#!/bin/bash
hour(){
isfull=1
ispart=2
rateperhr=20

randomcheck=$((RANDOM%3))
if [ $isfull -eq $randomcheck ]
  then
        echo "full time working hr is 8"
elif [ $ispart -eq $randomcheck ]
  then
        echo "part time working hr is 4"
else
        echo "working hr 0"
fi
}
hour


