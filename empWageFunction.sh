#! /bin/bash -x

# Constant
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=5
MAX_WORK_HOURS=20
# Variable

totalWorkingDays=0
totalWorkingHours=0


function getWorkHrs()
{
	local empcheck=$1
	local emphrs=0
	case $empcheck in
		$IS_PRESENT_FULL_TIME )
		empHrs=8 ;;
		$IS_PRESENT_PART_TIME )
		empHrs=4 ;;
	*)	empHrs=0;;
	
	esac 

	echo $empHrs
}
while [   $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORK_HOURS ] 

do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ));
	
	empHrs= "$( getWorkHrs $empCheck )"
	#totalWorkingDays=$(( $totalWorkingDays +1 ))
	totalWorkingDays=$(( $totalWorkingDays + $emphrs ))
	
done
salary=$(( $EMP_RATE_PER_HR * $totalWorkingDays ))
