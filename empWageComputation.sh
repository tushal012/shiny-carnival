#! /bin/bash -x

echo "Welcome to EmployeeWage"

isPresent=1;

function presentOrAbsent(){
	local empcheck=$1
	randomCheck=$(( RANDOM % 2  ))
	
         if [ $isPresent -eq $randomCheck ]
         then
                 echo "employee is  present"
         else                
		 echo "employee is absent"
   	fi

}
checkPresent="$(presentOrAbsent)"
echo $checkPresent





