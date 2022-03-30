#!bin/bash/

echo "welcome";
PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MaX_Working_Day=20;
totalSalary=0;
for ((day=0;day<$MaX_Working_Day;day++))
do
	isPresent=$((RANDOM%3));

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

	dailyWage=$((workingHour * WAGE_PER_HOUR));
	totalsalary=$((totalsalary+dailyWage));
done
echo "Employee daily wage : $"$dailyWage "USD";
echo "Employee monthly wage : $"$totalsalary"USD";

