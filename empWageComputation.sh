#! /bin/bash -x

echo "Welcome to EmployeeWage"

isPresent=1;
randomCheck=$(( RANDOM % 2  ))

function presentOrAbsent(){
	local empcheck=$1
	
	
         if [ $isPresent -eq $randomCheck ]
         then
                 echo "employee is  present"
         else                
		 echo "employee is absent"
   	fi

}
checkPresent="$(presentOrAbsent)"
echo $checkPresent

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
checkEmployeeSalary="$(empRatePerHour)"
echo $checkEmployeeSalary
