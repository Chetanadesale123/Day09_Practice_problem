#!bin/bash/

echo "welcome";
PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20
MAX_WORKING_HOUR=40;
totalWorkingHour=0;
day=0;

while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]

do
	if [ $((totalWorkingHour + 4)) -ge $MAX_WORKING_HOUR ]
then 
	isprsent=$PART_TIME;
else	
	isPresent=$((RANDOM%3));
fi
	case $isPresent in

		$PRESENT)
		echo "Employee is present";
		workingHour=8;
	;;

		$PART_TIME)
		echo "Employee is working part time";
		workingHour=4;
	;;

		*)
		echo "Employee is absent";
		workingHour=0;
	;;

esac;
	dailywage=$((workingHour * WAGE_PER_HOUR))
	totalWorkingHour=$((totalWorkingHour+workingHour));
	totalSalary=$((totalsalary+dailywage));

	((day++));
done
		

	echo "Employee monthly wage :  $totalsalary USD";
  echo "Employee daily wage :  $dailywage USD";
	totalSalary=$((totalWorkingHour*WAGE_PER_HOUR));


echo "Total working hour : $totalWorkingHour Hr";
echo "Total working day : $day";
