#!bin/bash/

echo "welcome";
PRESENT=1;
WAGE_PER_HOUR=20;
ispresent=$((RANDOM%2));
if [ $ispresent -eq $PRESENT ]
then
	echo "is present";
	workingHour=8;
else
	echo "is absent";
	workingHour=0;
fi
wage=$((WAGE_PER_HOUR*workingHour));
echo "Employee wage : $"$wage "USD";
