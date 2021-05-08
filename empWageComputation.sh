#! /bin/bash -x

echo "Welcome to EmployeeWage"


isPresent=1;
randomCheck=$(( RANDOM % 2  ))
isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

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
"$@"
