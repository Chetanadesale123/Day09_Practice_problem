#!bin/bash/

echo "welcome";
PRESENT=1;
WAGE_PER_HOUR=20;
ispresent=$((RANDOM%2));
if [ $ispresent -eq $PRESENT ]
then
	workingHour=8;
else
	workingHour=0;
fi
wage=$((WAGE_PER_HOUR*workingHour));
echo "Employee wage : $"$wage "USD";
