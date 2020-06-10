#!/bin/bash

ispresent=1
randomcheck=$(( RANDOM%2 ))
if [ $ispresent -eq $randomcheck ]
then
echo "is present "
else
echo "absent"
fi
