#! /bin/bash -x

echo "Welcome to EmployeeWage"

IS_PRESENT=1

#Variables
empCheck=$(( RANDOM % 2  ))

#Selection

if [$empcheck -eq $IS_PRESENT ]
then
	echo "employee is  present"
else
	echo "employee is absent"
fi
