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
                empHrs="$( getWorkhr $empcheck )"
                totalEmpHrs="$(( $totalEmphr+$emphrs ))"
                dailyWage[$totalWorkingDays]="$(( getEmpWage empHr))"
    done
totalSalary=$(( $totalEmphr*$empRatePerHr ))
echo ${dailyWage[@]}
echo ${!dailywage[@]}




^G Get Help      ^O Write Out     ^W Where Is      ^K Cut Text      ^J Justify       ^C Cur Pos       M-U Undo         M-A Mark Text    M-] To Bracket   M-Q Previous     ^B Back
^X Exit          ^R Read File     ^\ Replace       ^U Paste Text    ^T To
totalSalary=$(( $totalEmphr*$empRatePerHr ))
echo ${dailyWage[@]}



