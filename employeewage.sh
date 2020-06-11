#!/bin/bash
echo "welcome to employee wage computation"

isPartTime=1
isFullTime=2
maxHrsInMonth=100
empRatePerHr=20
NumofWorkingDAys=20

totalEmphr=0
totalWorkingDays=0

function getworkhr()
{
	case $1 in
		$isFullTime)
				emphr=8
		;;

		$isPartTime)
				emphr=4
		;;

		*)
				emphr=0
		;;
		esac

		echo $emphr


}
function getEmpWage()
{
	local empHr=$1
	echo  $(($empHr*$empRatePerHR))

}

while [[ $totalEmphr -lt $maxHrsInMonth && $totalWorkingDays -lt $NumofWorkingDAys ]]
    do
		(( $totalWorkingDays++ ))
		empCheck=$(( RANDOM%3 ))
		empHrs="$(( $totalEmphr+$emphrs ))"
		dailyWage[$totalWorkingDays]="$(( getEmpWage empHr))"
    done
totalSalary=$(( $totalEmphr*$empRatePerHr ))
echo ${dailyWage[@]}



