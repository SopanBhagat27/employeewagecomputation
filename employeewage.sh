#! /bin/bash

echo "Welcome to Employee Wage Computation"

isPartTime=1
isFullTime=2
empRate=20
maxDay=20
maxHrsInMonth=100
totalSalary=0

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalworkingDays -lt $maxDay ]]
do
        ((totalWorkingDays++))

        temp=$(( $RANDOM%3 ))

        case $temp in
                $isPartTime)
                        empHrs=8
                        echo "Working Part Time..."
                        ;;
                $isFullTime)
                        empHrs=4
                        echo "Working Full Time..."
                        ;;
                *)
                        empHrs=0
                        echo "Employee is not present..."
                        ;;
        esac

        totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

totalSalary=$(( $totalEmpHrs + $empRate ))

echo "Total Salary = " $totalSalary
