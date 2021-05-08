#! /bin/bash -x

echo "Welcome to EmployeeWage"


isPresent=1;
randomCheck=$(( RANDOM % 2  ))
isPartTime=1;
isFullTime=2;
totalSalary=0;
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
empRatePerHr=20
EMP_RATE_PER_HR=20
numWorkingDays=5;
NO_OF_WORKING_DAYS=5
MAX_WORK_HOURS=20

totalWorkingDays=0
totalWorkingHours=0

function presentOrAbsent(){
	local empcheck=$1
	
	
         if [ $isPresent -eq $randomCheck ]
         then
                 echo "employee is  present"
         else                
		 echo "employee is absent"
   	fi

}
#checkPresent="$(presentOrAbsent)"
#echo $checkPresent

function empRatePerHour(){

	if [ $isPresent -eq $randomCheck ];
	then
		empRatePerHr=20;
		empHrs=8;
		salary=$(($empHrs*$empRatePerHr));
	else
		salary=0;
	fi
}
#checkEmployeeSalary="$(empRatePerHour)"
#echo $checkEmployeeSalary


function workingDays(){

 	for (( Day=1; Day<=$numWorkingDays; Day++ ))
		do
			empCheck=$((RANDOM%3));
			case $empCheck in
		 	$isFullTime)
			empHrs=4
			;;
			$isPartTime)
				empHrs=4
				;;
				*)
				empHrs=0;;
			esac
			salary=$(($empHrs*$empRatePerHr));
			totalSalary=$(($totalSalary+$salary));
		done
}
#checkTotalSalary="$(workingDays)"
#echo $checkTotalSalary

function getWorkHrs()
{
	local empCheck=$1
	local empHrs=0
	case $empcheck in
		$IS_PRESENT_FULL_TIME )
		empHrs=8 ;;
		$IS_PRESENT_PART_TIME )
		empHrs=4 ;;
	*)	empHrs=0;;
	
	esac 

	echo $empHrs
}
function workHours(){
while [   $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORK_HOURS ]

do
	#((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ));
	totalWorkingDays=$(( $totalWorkingDays +1 ))

	empHrs= "$(getWorkHrs $empCheck)"
	echo $empCheck
	totalWorkingDays=$(( $totalWorkingDays + $empHrs ))
	
done
salary=$(( $EMP_RATE_PER_HR * $totalWorkingDays ))

}
#salary=$(( $EMP_RATE_PER_HR * $totalWorkingDays ))


"$@"

