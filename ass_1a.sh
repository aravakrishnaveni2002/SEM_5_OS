clear

leapYearOrNot(){
	year=$1
	if [ `expr $year \% 400` -eq 0 ];then
		echo 1

	elif [ `expr $year \% 100` -ne 0 -a `expr $year \% 4` -eq 0 ];then
		echo 1

	else
		echo 0

	fi
}


echo "Enter a year"
read year

leap=`leapYearOrNot $year`

if [ $leap -eq 1 ];then
	echo Leap year

else
	echo Not Leap year
fi
