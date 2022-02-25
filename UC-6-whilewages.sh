#!/bin/bash -x

ispartTime=1
isfullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxRateInMonth
&& $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        randomcheck=$((RANDOM%3))
        case $randomcheck in
                                 $isfullTime )
                                        empHrs=8
                                  ;;
                                  $ispartTime )
                                        empHrs=4
                                  ;;
                                  *)
                                        empHrs=0
                                  ;;
esac
    
     totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
