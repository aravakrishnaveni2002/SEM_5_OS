
validSides(){
	
	s1=$1
	s2=$2
	s3=$3

	sum=0

	if [ $s1 -gt $s2 -a $s1 -gt $s3 ];then
		sum=`expr $s1 + $s3`
		#sum=`echo "scale=2; $s2 + $s3" | bc`
		#if (( $(echo "$sum > $s1" | bc -l) ));then
		if [ $sum -gt $s1 ];then
			echo 1
		else
			echo 0
		fi

	elif [ $s2 -gt $s1 -a $s2 -gt $s3 ];then
		sum=`expr $s1 + $s3`
		#sum=`echo "scale=2; $s1 + $s3" | bc`
		if [ $sum -gt $s2 ];then
			echo 1
		else
			echo 0
		fi

	elif [ $s3 -gt $s1 -a $s3 -gt $s2 ];then
		sum=`expr $s1 + $s2`
		#sum=`echo "scale=2; $s1 + $s2sss" | bc`
		if [ $sum -gt $s3 ];then
			echo 1
		else
			echo 0
		fi
	fi

}

clear
echo "Enter the three sides"
read s1
read s2
read s3
ans=`validSides $s1 $s2 $s3`


if [ $ans -eq 1 ];then
	echo valid sides
else
	echo Not valid sides
fi

#read a
#read b

#x=`echo "scale=2; $a + $b" | bc`
#echo $x

