#!/bin/bash
        echo "Welcome to employee Wage Computation"
ispart=1
isfull=2
perhrrate=20
salary=0
fullhr=8
parthr=4
days=20
randomcheck=$((RANDOM%3))

if [ $isfull -eq $randomcheck ]
    then
        salary=$(( $fullhr*$days*$perhrrate ))
        echo "fill time salary for month " $salary
elif [ $ispart -eq $randomcheck ]
    then
        salary=$(( $parthr*$days*$perhrrate ))
        echo "part time salary for month " $salary
else
        hrs=0
fi


